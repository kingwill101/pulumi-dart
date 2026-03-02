// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginVpcOriginConfig {
  final pulumi.Input<int>? originKeepaliveTimeout;
  final pulumi.Input<int>? originReadTimeout;
  /// The AWS account ID that owns the VPC origin. Required when referencing a VPC origin from a different AWS account for cross-account VPC origin access.
  final pulumi.Input<String>? ownerAccountId;
  /// The VPC origin ID.
  final pulumi.Input<String> vpcOriginId;

  /// Creates a new [DistributionOriginVpcOriginConfig].
  /// [originKeepaliveTimeout] Optional.
  /// [originReadTimeout] Optional.
  /// [ownerAccountId] The AWS account ID that owns the VPC origin. Required when referencing a VPC origin from a different AWS account for cross-account VPC origin access.
  /// [vpcOriginId] The VPC origin ID.
  DistributionOriginVpcOriginConfig({
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    this.ownerAccountId,
    required this.vpcOriginId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originKeepaliveTimeout': ?originKeepaliveTimeout,
      'originReadTimeout': ?originReadTimeout,
      'ownerAccountId': ?ownerAccountId,
      'vpcOriginId': vpcOriginId,
    };
  }

  factory DistributionOriginVpcOriginConfig.fromMap(Map<String, dynamic> map) {
    return DistributionOriginVpcOriginConfig(
      originKeepaliveTimeout: map['originKeepaliveTimeout'] == null ? null : ((map['originKeepaliveTimeout'] as int).input()).input(),
      originReadTimeout: map['originReadTimeout'] == null ? null : ((map['originReadTimeout'] as int).input()).input(),
      ownerAccountId: map['ownerAccountId'] == null ? null : ((map['ownerAccountId'] as String).input()).input(),
      vpcOriginId: (map['vpcOriginId'] as String).input(),
    );
  }
}

