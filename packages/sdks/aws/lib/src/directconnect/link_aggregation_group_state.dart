// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LinkAggregationGroup resources.
class LinkAggregationGroupState {
  /// The ARN of the LAG.
  final pulumi.Input<String>? arn;
  /// The ID of an existing dedicated connection to migrate to the LAG.
  final pulumi.Input<String>? connectionId;
  /// The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  final pulumi.Input<String>? connectionsBandwidth;
  /// A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  final pulumi.Input<bool>? forceDestroy;
  /// Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).
  final pulumi.Input<String>? hasLogicalRedundancy;
  /// Indicates whether jumbo frames (9001 MTU) are supported.
  final pulumi.Input<bool>? jumboFrameCapable;
  /// The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  final pulumi.Input<String>? location;
  /// The name of the LAG.
  final pulumi.Input<String>? name;
  /// The ID of the AWS account that owns the LAG.
  final pulumi.Input<String>? ownerAccountId;
  /// The name of the service provider associated with the LAG.
  final pulumi.Input<String>? providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LinkAggregationGroupState].
  /// [arn] The ARN of the LAG.
  /// [connectionId] The ID of an existing dedicated connection to migrate to the LAG.
  /// [connectionsBandwidth] The bandwidth of the individual dedicated connections bundled by the LAG. Valid values: 1Gbps, 10Gbps, 100Gbps, and 400Gbps. Case sensitive. Refer to the AWS Direct Connection supported bandwidths for [Dedicated Connections](https://docs.aws.amazon.com/directconnect/latest/UserGuide/dedicated_connection.html).
  /// [forceDestroy] A boolean that indicates all connections associated with the LAG should be deleted so that the LAG can be destroyed without error. These objects are *not* recoverable.
  /// [hasLogicalRedundancy] Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).
  /// [jumboFrameCapable] Indicates whether jumbo frames (9001 MTU) are supported.
  /// [location] The AWS Direct Connect location in which the LAG should be allocated. See [DescribeLocations](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DescribeLocations.html) for the list of AWS Direct Connect locations. Use `locationCode`.
  /// [name] The name of the LAG.
  /// [ownerAccountId] The ID of the AWS account that owns the LAG.
  /// [providerName] The name of the service provider associated with the LAG.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LinkAggregationGroupState({
    this.arn,
    this.connectionId,
    this.connectionsBandwidth,
    this.forceDestroy,
    this.hasLogicalRedundancy,
    this.jumboFrameCapable,
    this.location,
    this.name,
    this.ownerAccountId,
    this.providerName,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionId': ?connectionId,
      'connectionsBandwidth': ?connectionsBandwidth,
      'forceDestroy': ?forceDestroy,
      'hasLogicalRedundancy': ?hasLogicalRedundancy,
      'jumboFrameCapable': ?jumboFrameCapable,
      'location': ?location,
      'name': ?name,
      'ownerAccountId': ?ownerAccountId,
      'providerName': ?providerName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LinkAggregationGroupState.fromMap(Map<String, dynamic> map) {
    return LinkAggregationGroupState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      connectionId: map['connectionId'] == null ? null : (map['connectionId'] as String).input(),
      connectionsBandwidth: map['connectionsBandwidth'] == null ? null : (map['connectionsBandwidth'] as String).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      hasLogicalRedundancy: map['hasLogicalRedundancy'] == null ? null : (map['hasLogicalRedundancy'] as String).input(),
      jumboFrameCapable: map['jumboFrameCapable'] == null ? null : (map['jumboFrameCapable'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : (map['ownerAccountId'] as String).input(),
      providerName: map['providerName'] == null ? null : (map['providerName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

