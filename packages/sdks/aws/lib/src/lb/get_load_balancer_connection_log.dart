// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerConnectionLog {
  final pulumi.Input<String> bucket;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> prefix;

  /// Creates a new [GetLoadBalancerConnectionLog].
  /// [bucket] Required.
  /// [enabled] Required.
  /// [prefix] Required.
  GetLoadBalancerConnectionLog({
    required this.bucket,
    required this.enabled,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'enabled': enabled,
      'prefix': prefix,
    };
  }

  factory GetLoadBalancerConnectionLog.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerConnectionLog(
      bucket: (map['bucket'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      prefix: (map['prefix'] as String).input(),
    );
  }
}

