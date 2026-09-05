// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableReplica {
  /// ARN of the table
  /// * `replica.*.arn` - ARN of the replica
  /// * `replica.*.stream_arn` - ARN of the replica Table Stream. Only available when `streamEnabled = true`.
  /// * `replica.*.stream_label` - Timestamp, in ISO 8601 format, for the replica stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when `streamEnabled = true`.
  final pulumi.Input<String?>? arn;
  /// Whether this global table will be using `STRONG` consistency mode or `EVENTUAL` consistency mode. Default value is `EVENTUAL`.
  final pulumi.Input<String?>? consistencyMode;
  /// Whether deletion protection is enabled (true) or disabled (false) on the replica. Default is `false`.
  final pulumi.Input<bool?>? deletionProtectionEnabled;
  /// ARN of the CMK that should be used for the AWS KMS encryption.
  /// This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`.
  /// **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  /// **Note:** Changing this value will recreate the replica.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Whether to enable Point In Time Recovery for the replica. Default is `false`.
  final pulumi.Input<bool?>? pointInTimeRecovery;
  /// Whether to propagate the global table's tags to a replica.
  /// Default is `false`.
  /// Changes to tags only move in one direction: from global (source) to replica.
  /// Tag drift on a replica will not trigger an update.
  /// Tag changes on the global table are propagated to replicas.
  /// Changing from `true` to `false` on a subsequent `apply` leaves replica tags as-is and no longer manages them.
  final pulumi.Input<bool?>? propagateTags;
  /// Region name of the replica.
  final pulumi.Input<String> regionName;
  /// ARN of the Table Stream. Only available when `streamEnabled = true`
  final pulumi.Input<String?>? streamArn;
  /// Timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when `streamEnabled = true`.
  final pulumi.Input<String?>? streamLabel;

  /// Creates a new [TableReplica].
  /// [arn] ARN of the table
  /// [consistencyMode] Whether this global table will be using `STRONG` consistency mode or `EVENTUAL` consistency mode. Default value is `EVENTUAL`.
  /// [deletionProtectionEnabled] Whether deletion protection is enabled (true) or disabled (false) on the replica. Default is `false`.
  /// [kmsKeyArn] ARN of the CMK that should be used for the AWS KMS encryption.
  /// [pointInTimeRecovery] Whether to enable Point In Time Recovery for the replica. Default is `false`.
  /// [propagateTags] Whether to propagate the global table's tags to a replica.
  /// [regionName] Region name of the replica.
  /// [streamArn] ARN of the Table Stream. Only available when `streamEnabled = true`
  /// [streamLabel] Timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when `streamEnabled = true`.
  const TableReplica({
    this.arn,
    this.consistencyMode,
    this.deletionProtectionEnabled,
    this.kmsKeyArn,
    this.pointInTimeRecovery,
    this.propagateTags,
    required this.regionName,
    this.streamArn,
    this.streamLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'consistencyMode': ?consistencyMode,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'kmsKeyArn': ?kmsKeyArn,
      'pointInTimeRecovery': ?pointInTimeRecovery,
      'propagateTags': ?propagateTags,
      'regionName': regionName,
      'streamArn': ?streamArn,
      'streamLabel': ?streamLabel,
    };
  }

  factory TableReplica.fromMap(Map<String, dynamic> map) {
    return TableReplica(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consistencyMode: (() { final guardedValue = map['consistencyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pointInTimeRecovery: (() { final guardedValue = map['pointInTimeRecovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      propagateTags: (() { final guardedValue = map['propagateTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regionName: pulumi.Input.fromValue(map['regionName'] as String),
      streamArn: (() { final guardedValue = map['streamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamLabel: (() { final guardedValue = map['streamLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
