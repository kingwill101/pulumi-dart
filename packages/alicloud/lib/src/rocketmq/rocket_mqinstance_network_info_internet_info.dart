// ignore_for_file: unused_element, unnecessary_cast


class RocketMQInstanceNetworkInfoInternetInfo {
  /// Public network bandwidth specification. Unit: Mb/s.  This field should only be filled when the public network billing type is set to payByBandwidth.  The value range is [1 - 1000].
  final int? flowOutBandwidth;
  /// Public network billing type.  Parameter values are as follows:
  /// - payByBandwidth: Fixed bandwidth billing. This parameter must be set to the value when public network access is enabled.
  /// - uninvolved: Not involved. This parameter must be set to the value when public network access is disabled.
  final String flowOutType;
  /// Whether to enable public network access.  The parameter values are as follows:
  /// - enable: Enable public network access
  /// - disable: Disable public network access   Instances by default support VPC access. If public network access is enabled, Alibaba Cloud Message Queue RocketMQ version will incur charges for public network outbound bandwidth. For specific billing information, please refer to [Public Network Access Fees](https://help.aliyun.com/zh/apsaramq-for-rocketmq/cloud-message-queue-rocketmq-5-x-series/product-overview/internet-access-fee).
  final String internetSpec;
  /// Field `ip_whitelist` has been deprecated from provider version 1.245.0. New field `ip_whitelists` instead.
  final List<String>? ipWhitelists;

  /// Creates a new [RocketMQInstanceNetworkInfoInternetInfo].
  /// [flowOutBandwidth] Public network bandwidth specification. Unit: Mb/s.  This field should only be filled when the public network billing type is set to payByBandwidth.  The value range is [1 - 1000].
  /// [flowOutType] Public network billing type.  Parameter values are as follows:
  /// [internetSpec] Whether to enable public network access.  The parameter values are as follows:
  /// [ipWhitelists] Field `ip_whitelist` has been deprecated from provider version 1.245.0. New field `ip_whitelists` instead.
  RocketMQInstanceNetworkInfoInternetInfo({
    this.flowOutBandwidth,
    required this.flowOutType,
    required this.internetSpec,
    this.ipWhitelists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowOutBandwidth': ?flowOutBandwidth,
      'flowOutType': flowOutType,
      'internetSpec': internetSpec,
      'ipWhitelists': ?ipWhitelists,
    };
  }

  factory RocketMQInstanceNetworkInfoInternetInfo.fromMap(Map<String, dynamic> map) {
    return RocketMQInstanceNetworkInfoInternetInfo(
      flowOutBandwidth: map['flowOutBandwidth'] == null ? null : map['flowOutBandwidth'] as int,
      flowOutType: map['flowOutType'] as String,
      internetSpec: map['internetSpec'] as String,
      ipWhitelists: map['ipWhitelists'] == null ? null : (map['ipWhitelists'] as List).cast<String>(),
    );
  }
}

