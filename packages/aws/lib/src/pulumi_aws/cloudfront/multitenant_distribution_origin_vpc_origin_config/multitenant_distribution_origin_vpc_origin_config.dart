// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionOriginVpcOriginConfig {
  /// Custom keep-alive timeout, in seconds. By default, CloudFront uses a default timeout. Default: 5.
  final int? originKeepaliveTimeout;

  /// Custom read timeout, in seconds. By default, CloudFront uses a default timeout. Default: 30.
  final int? originReadTimeout;

  /// ID of the VPC origin that you want CloudFront to route requests to.
  final String vpcOriginId;

  MultitenantDistributionOriginVpcOriginConfig({
    this.originKeepaliveTimeout,
    this.originReadTimeout,
    required this.vpcOriginId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final originKeepaliveTimeoutValue = originKeepaliveTimeout;
    if (originKeepaliveTimeoutValue != null) {
      map['originKeepaliveTimeout'] = originKeepaliveTimeoutValue;
    }
    final originReadTimeoutValue = originReadTimeout;
    if (originReadTimeoutValue != null) {
      map['originReadTimeout'] = originReadTimeoutValue;
    }
    map['vpcOriginId'] = vpcOriginId;
    return map;
  }

  factory MultitenantDistributionOriginVpcOriginConfig.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionOriginVpcOriginConfig(
      originKeepaliveTimeout: map['originKeepaliveTimeout'] == null
          ? null
          : map['originKeepaliveTimeout'] as int,
      originReadTimeout: map['originReadTimeout'] == null
          ? null
          : map['originReadTimeout'] as int,
      vpcOriginId: map['vpcOriginId'] as String,
    );
  }
}
