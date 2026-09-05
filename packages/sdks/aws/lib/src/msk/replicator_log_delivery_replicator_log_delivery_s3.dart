// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorLogDeliveryReplicatorLogDeliveryS3 {
  /// Name of the S3 bucket. Required if `enabled` is `true`. If `enabled` is `false`, this value must not be set.
  final pulumi.Input<String?>? bucket;
  /// Boolean whether to enable log delivery to S3.
  final pulumi.Input<bool> enabled;
  /// Prefix to use when storing replicator logs in S3. If `enabled` is `false`, this value must not be set.
  final pulumi.Input<String?>? prefix;

  /// Creates a new [ReplicatorLogDeliveryReplicatorLogDeliveryS3].
  /// [bucket] Name of the S3 bucket. Required if `enabled` is `true`. If `enabled` is `false`, this value must not be set.
  /// [enabled] Boolean whether to enable log delivery to S3.
  /// [prefix] Prefix to use when storing replicator logs in S3. If `enabled` is `false`, this value must not be set.
  const ReplicatorLogDeliveryReplicatorLogDeliveryS3({
    this.bucket,
    required this.enabled,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'enabled': enabled,
      'prefix': ?prefix,
    };
  }

  factory ReplicatorLogDeliveryReplicatorLogDeliveryS3.fromMap(Map<String, dynamic> map) {
    return ReplicatorLogDeliveryReplicatorLogDeliveryS3(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
