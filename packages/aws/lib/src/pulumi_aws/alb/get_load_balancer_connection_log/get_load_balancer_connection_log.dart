// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerConnectionLog {
  final String bucket;
  final bool enabled;
  final String prefix;

  GetLoadBalancerConnectionLog({
    required this.bucket,
    required this.enabled,
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['enabled'] = enabled;
    map['prefix'] = prefix;
    return map;
  }

  factory GetLoadBalancerConnectionLog.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerConnectionLog(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] as String,
    );
  }
}
