// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerAccessLogs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> bucketPrefix;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<int> interval;

  /// Creates a new [GetLoadBalancerAccessLogs].
  /// [bucket] Required.
  /// [bucketPrefix] Required.
  /// [enabled] Required.
  /// [interval] Required.
  const GetLoadBalancerAccessLogs({
    required this.bucket,
    required this.bucketPrefix,
    required this.enabled,
    required this.interval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketPrefix': bucketPrefix,
      'enabled': enabled,
      'interval': interval,
    };
  }

  factory GetLoadBalancerAccessLogs.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerAccessLogs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketPrefix: pulumi.Input.fromValue(map['bucketPrefix'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      interval: pulumi.Input.fromValue(map['interval'] as int),
    );
  }
}
