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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? connectionsBandwidth,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? hasLogicalRedundancy,
    pulumi.Output<bool>? jumboFrameCapable,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ownerAccountId,
    pulumi.Output<String>? providerName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      connectionsBandwidth = pulumi.Input.asOptionalInput<String>(connectionsBandwidth),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      hasLogicalRedundancy = pulumi.Input.asOptionalInput<String>(hasLogicalRedundancy),
      jumboFrameCapable = pulumi.Input.asOptionalInput<bool>(jumboFrameCapable),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      ownerAccountId = pulumi.Input.asOptionalInput<String>(ownerAccountId),
      providerName = pulumi.Input.asOptionalInput<String>(providerName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      connectionsBandwidth: map['connectionsBandwidth'] == null ? null : pulumi.Output.create<String>(map['connectionsBandwidth'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      hasLogicalRedundancy: map['hasLogicalRedundancy'] == null ? null : pulumi.Output.create<String>(map['hasLogicalRedundancy'] as String),
      jumboFrameCapable: map['jumboFrameCapable'] == null ? null : pulumi.Output.create<bool>(map['jumboFrameCapable'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ownerAccountId: map['ownerAccountId'] == null ? null : pulumi.Output.create<String>(map['ownerAccountId'] as String),
      providerName: map['providerName'] == null ? null : pulumi.Output.create<String>(map['providerName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

