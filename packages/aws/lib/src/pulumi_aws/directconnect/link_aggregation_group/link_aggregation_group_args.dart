// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LinkAggregationGroup.
class LinkAggregationGroupArgs {
  /// The ID of an existing dedicated connection to migrate to the LAG.
  final pulumi.Input<String>? connectionId;

  /// The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  final pulumi.Input<String> connectionsBandwidth;

  /// A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  final pulumi.Input<bool>? forceDestroy;

  /// The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  final pulumi.Input<String> location;

  /// The name of the LAG.
  final pulumi.Input<String>? name;

  /// The name of the service provider associated with the LAG.
  final pulumi.Input<String>? providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      connectionId: pulumi.Input.asOptionalInput<String>(map['connectionId']),
      connectionsBandwidth:
          pulumi.Input.asInput<String>(map['connectionsBandwidth']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      providerName: pulumi.Input.asOptionalInput<String>(map['providerName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
