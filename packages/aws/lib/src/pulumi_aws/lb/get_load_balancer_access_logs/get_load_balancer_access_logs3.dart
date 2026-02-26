// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerAccessLogs3 {
  final String bucket;
  final bool enabled;
  final String prefix;

  GetLoadBalancerAccessLogs3({
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

  factory GetLoadBalancerAccessLogs3.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerAccessLogs3(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] as String,
    );
  }
}
