// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LinkAggregationGroup.
class LinkAggregationGroupArgs {
  /// The ID of an existing dedicated connection to migrate to the LAG.
  final Input<String>? connectionId;

  /// The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  final Input<String> connectionsBandwidth;

  /// A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  final Input<bool>? forceDestroy;

  /// The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  final Input<String> location;

  /// The name of the LAG.
  final Input<String>? name;

  /// The name of the service provider associated with the LAG.
  final Input<String>? providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  LinkAggregationGroupArgs({
    this.connectionId,
    required this.connectionsBandwidth,
    this.forceDestroy,
    required this.location,
    this.name,
    this.providerName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionIdValue = connectionId;
    if (connectionIdValue != null) {
      map['connectionId'] = connectionIdValue;
    }
    map['connectionsBandwidth'] = connectionsBandwidth;
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LinkAggregationGroupArgs.fromMap(Map<String, dynamic> map) {
    return LinkAggregationGroupArgs(
      connectionId: Input.asOptionalInput<String>(map['connectionId']),
      connectionsBandwidth: Input.asInput<String>(map['connectionsBandwidth']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      providerName: Input.asOptionalInput<String>(map['providerName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
