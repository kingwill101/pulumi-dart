// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDedicatedIpPoolDedicatedIp {
  /// IPv4 address.
  final pulumi.Input<String> ip;
  /// Indicates how complete the dedicated IP warm-up process is. When this value equals `1`, the address has completed the warm-up process and is ready for use.
  final pulumi.Input<int> warmupPercentage;
  /// The warm-up status of a dedicated IP address. Valid values: `IN_PROGRESS`, `DONE`.
  final pulumi.Input<String> warmupStatus;

  /// Creates a new [GetDedicatedIpPoolDedicatedIp].
  /// [ip] IPv4 address.
  /// [warmupPercentage] Indicates how complete the dedicated IP warm-up process is. When this value equals `1`, the address has completed the warm-up process and is ready for use.
  /// [warmupStatus] The warm-up status of a dedicated IP address. Valid values: `IN_PROGRESS`, `DONE`.
  GetDedicatedIpPoolDedicatedIp({
    required this.ip,
    required this.warmupPercentage,
    required this.warmupStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'warmupPercentage': warmupPercentage,
      'warmupStatus': warmupStatus,
    };
  }

  factory GetDedicatedIpPoolDedicatedIp.fromMap(Map<String, dynamic> map) {
    return GetDedicatedIpPoolDedicatedIp(
      ip: (map['ip'] as String).input(),
      warmupPercentage: (map['warmupPercentage'] as int).input(),
      warmupStatus: (map['warmupStatus'] as String).input(),
    );
  }
}

