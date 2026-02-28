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
    String? connectionId,
    required String connectionsBandwidth,
    bool? forceDestroy,
    required String location,
    String? name,
    String? providerName,
    String? region,
    Map<String, String>? tags,
  }) :
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      connectionsBandwidth = pulumi.Input.asInput<String>(connectionsBandwidth),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      connectionId: map['connectionId'] == null ? null : map['connectionId'] as String,
      connectionsBandwidth: map['connectionsBandwidth'] as String,
      forceDestroy: map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      providerName: map['providerName'] == null ? null : map['providerName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

