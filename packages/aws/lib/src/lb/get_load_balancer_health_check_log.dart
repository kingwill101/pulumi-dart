// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerHealthCheckLog {
  final String bucket;
  final bool enabled;
  final String prefix;

  /// Creates a new [GetLoadBalancerHealthCheckLog].
  /// [bucket] Required.
  /// [enabled] Required.
  /// [prefix] Required.
  GetLoadBalancerHealthCheckLog({
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

  factory GetLoadBalancerHealthCheckLog.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerHealthCheckLog(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] as String,
    );
  }
}
