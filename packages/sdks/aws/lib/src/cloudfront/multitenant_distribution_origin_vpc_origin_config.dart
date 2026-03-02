// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionOriginVpcOriginConfig {
  /// Custom keep-alive timeout, in seconds. By default, CloudFront uses a default timeout. Default: 5.
  final pulumi.Input<int>? originKeepaliveTimeout;
  /// Custom read timeout, in seconds. By default, CloudFront uses a default timeout. Default: 30.
  final pulumi.Input<int>? originReadTimeout;
  /// ID of the VPC origin that you want CloudFront to route requests to.
  final pulumi.Input<String> vpcOriginId;

  /// Creates a new [MultitenantDistributionOriginVpcOriginConfig].
  /// [originKeepaliveTimeout] Custom keep-alive timeout, in seconds. By default, CloudFront uses a default timeout. Default: 5.
  /// [originReadTimeout] Custom read timeout, in seconds. By default, CloudFront uses a default timeout. Default: 30.
  /// [vpcOriginId] ID of the VPC origin that you want CloudFront to route requests to.
  MultitenantDistributionOriginVpcOriginConfig({
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    required this.vpcOriginId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originKeepaliveTimeout': ?originKeepaliveTimeout,
      'originReadTimeout': ?originReadTimeout,
      'vpcOriginId': vpcOriginId,
    };
  }

  factory MultitenantDistributionOriginVpcOriginConfig.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginVpcOriginConfig(
      originKeepaliveTimeout: map['originKeepaliveTimeout'] == null ? null : ((map['originKeepaliveTimeout'] as int).input()).input(),
      originReadTimeout: map['originReadTimeout'] == null ? null : ((map['originReadTimeout'] as int).input()).input(),
      vpcOriginId: (map['vpcOriginId'] as String).input(),
    );
  }
}

