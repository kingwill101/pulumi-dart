// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerConnectionLog {
  final String bucket;
  final bool enabled;
  final String prefix;

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
      bucket: map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] as String,
    );
  }
}

