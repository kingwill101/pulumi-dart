// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TableReplica.
class TableReplicaArgs {
  /// Whether deletion protection is enabled (true) or disabled (false) on the table replica.
  final Input<bool>? deletionProtectionEnabled;

  /// ARN of the _main_ or global table which this resource will replicate.
  ///
  /// The following arguments are optional:
  final Input<String> globalTableArn;

  /// ARN of the CMK that should be used for the AWS KMS encryption. This argument should only be used if the key is different from the default KMS-managed DynamoDB key, `alias/aws/dynamodb`. **Note:** This attribute will _not_ be populated with the ARN of _default_ keys.
  final Input<String>? kmsKeyArn;

  /// Whether to enable Point In Time Recovery for the table replica. Default is `false`.
  final Input<bool>? pointInTimeRecovery;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Storage class of the table replica. Valid values are `STANDARD` and `STANDARD_INFREQUENT_ACCESS`. If not used, the table replica will use the same class as the global table.
  final Input<String>? tableClassOverride;

  /// Map of tags to populate on the created table. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TableReplicaArgs({
    this.deletionProtectionEnabled,
    required this.globalTableArn,
    this.kmsKeyArn,
    this.pointInTimeRecovery,
    this.region,
    this.tableClassOverride,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    map['globalTableArn'] = globalTableArn;
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final pointInTimeRecoveryValue = pointInTimeRecovery;
    if (pointInTimeRecoveryValue != null) {
      map['pointInTimeRecovery'] = pointInTimeRecoveryValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tableClassOverrideValue = tableClassOverride;
    if (tableClassOverrideValue != null) {
      map['tableClassOverride'] = tableClassOverrideValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TableReplicaArgs.fromMap(Map<String, dynamic> map) {
    return TableReplicaArgs(
      deletionProtectionEnabled:
          Input.asOptionalInput<bool>(map['deletionProtectionEnabled']),
      globalTableArn: Input.asInput<String>(map['globalTableArn']),
      kmsKeyArn: Input.asOptionalInput<String>(map['kmsKeyArn']),
      pointInTimeRecovery:
          Input.asOptionalInput<bool>(map['pointInTimeRecovery']),
      region: Input.asOptionalInput<String>(map['region']),
      tableClassOverride:
          Input.asOptionalInput<String>(map['tableClassOverride']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
