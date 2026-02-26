// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerConnectionLog2 {
  final String bucket;
  final bool enabled;
  final String prefix;

  GetLoadBalancerConnectionLog2({
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

  factory GetLoadBalancerConnectionLog2.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerConnectionLog2(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] as String,
    );
  }
}
