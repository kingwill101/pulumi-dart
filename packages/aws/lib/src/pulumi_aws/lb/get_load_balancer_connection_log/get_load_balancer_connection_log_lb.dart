// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerConnectionLogLb {
  final String bucket;
  final bool enabled;
  final String prefix;

  GetLoadBalancerConnectionLogLb({
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

  factory GetLoadBalancerConnectionLogLb.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerConnectionLogLb(
      bucket: map['bucket'] as String,
      enabled: map['enabled'] as bool,
      prefix: map['prefix'] as String,
    );
  }
}
