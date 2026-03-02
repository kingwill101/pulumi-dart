// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_link_aggregation_group_link_aggregation_group_args_doc}
/// The set of arguments for LinkAggregationGroup.
/// {@endtemplate}
/// {@macro pulumi_directconnect_link_aggregation_group_link_aggregation_group_args_doc}
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

  /// Creates a new [LinkAggregationGroupArgs].
  /// [connectionId] The ID of an existing dedicated connection to migrate to the LAG.
  /// [connectionsBandwidth] The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  /// [forceDestroy] A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  /// [location] The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  /// [name] The name of the LAG.
  /// [providerName] The name of the service provider associated with the LAG.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'connectionId': ?connectionId,
      'connectionsBandwidth': connectionsBandwidth,
      'forceDestroy': ?forceDestroy,
      'location': location,
      'name': ?name,
      'providerName': ?providerName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory LinkAggregationGroupArgs.fromMap(Map<String, dynamic> map) {
    return LinkAggregationGroupArgs(
      connectionId: map['connectionId'] == null ? null : (map['connectionId'] as String).input(),
      connectionsBandwidth: (map['connectionsBandwidth'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

