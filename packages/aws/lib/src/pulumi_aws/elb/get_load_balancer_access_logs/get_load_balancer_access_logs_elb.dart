// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerAccessLogsElb {
  final String bucket;
  final String bucketPrefix;
  final bool enabled;
  final int interval;

  GetLoadBalancerAccessLogsElb({
    required this.bucket,
    required this.bucketPrefix,
    required this.enabled,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['bucketPrefix'] = bucketPrefix;
    map['enabled'] = enabled;
    map['interval'] = interval;
    return map;
  }

  factory GetLoadBalancerAccessLogsElb.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerAccessLogsElb(
      bucket: map['bucket'] as String,
      bucketPrefix: map['bucketPrefix'] as String,
      enabled: map['enabled'] as bool,
      interval: map['interval'] as int,
    );
  }
}
