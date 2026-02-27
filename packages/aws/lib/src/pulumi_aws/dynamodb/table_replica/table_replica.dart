// ignore_for_file: unused_element, unnecessary_cast

class TableReplica {
  /// ARN of the table
  final String? arn;

  /// Whether this global table will be using `STRONG` consistency mode or `EVENTUAL` consistency mode. Default value is `EVENTUAL`.
  final String? consistencyMode;

  /// Whether deletion protection is enabled (true) or disabled (false) on the replica. Default is `false`.
  final bool? deletionProtectionEnabled;

  /// ARN of the CMK that should be used for the AWS KMS encryption.
  /// This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`.
  /// **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  /// **Note:** Changing this value will recreate the replica.
  final String? kmsKeyArn;

  /// Whether to enable Point In Time Recovery for the replica. Default is `false`.
  final bool? pointInTimeRecovery;

  /// Whether to propagate the global table's tags to a replica.
  /// Default is `false`.
  /// Changes to tags only move in one direction: from global (source) to replica.
  /// Tag drift on a replica will not trigger an update.
  /// Tag changes on the global table are propagated to replicas.
  /// Changing from `true` to `false` on a subsequent `apply` leaves replica tags as-is and no longer manages them.
  final bool? propagateTags;

  /// Region name of the replica.
  final String regionName;

  /// ARN of the Table Stream. Only available when `stream_enabled = true`
  final String? streamArn;

  /// Timestamp, in ISO 8601 format, for this stream. Note that this timestamp is not a unique identifier for the stream on its own. However, the combination of AWS customer ID, table name and this field is guaranteed to be unique. It can be used for creating CloudWatch Alarms. Only available when `stream_enabled = true`.
  final String? streamLabel;

  TableReplica({
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
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final consistencyModeValue = consistencyMode;
    if (consistencyModeValue != null) {
      map['consistencyMode'] = consistencyModeValue;
    }
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final pointInTimeRecoveryValue = pointInTimeRecovery;
    if (pointInTimeRecoveryValue != null) {
      map['pointInTimeRecovery'] = pointInTimeRecoveryValue;
    }
    final propagateTagsValue = propagateTags;
    if (propagateTagsValue != null) {
      map['propagateTags'] = propagateTagsValue;
    }
    map['regionName'] = regionName;
    final streamArnValue = streamArn;
    if (streamArnValue != null) {
      map['streamArn'] = streamArnValue;
    }
    final streamLabelValue = streamLabel;
    if (streamLabelValue != null) {
      map['streamLabel'] = streamLabelValue;
    }
    return map;
  }

  factory TableReplica.fromMap(Map<String, dynamic> map) {
    return TableReplica(
      arn: map['arn'] == null ? null : map['arn'] as String,
      consistencyMode: map['consistencyMode'] == null
          ? null
          : map['consistencyMode'] as String,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null
          ? null
          : map['deletionProtectionEnabled'] as bool,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      pointInTimeRecovery: map['pointInTimeRecovery'] == null
          ? null
          : map['pointInTimeRecovery'] as bool,
      propagateTags:
          map['propagateTags'] == null ? null : map['propagateTags'] as bool,
      regionName: map['regionName'] as String,
      streamArn: map['streamArn'] == null ? null : map['streamArn'] as String,
      streamLabel:
          map['streamLabel'] == null ? null : map['streamLabel'] as String,
    );
  }
}
