// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_retention.dart';
import 'archive_retention_actual.dart';

/// Input properties used for looking up and filtering Archive resources.
class ArchiveState {
  /// ARN of the archive.
  final pulumi.Input<String?>? arn;
  /// Timestamp of when the archive was created.
  final pulumi.Input<String?>? createdTimestamp;
  /// ARN of the KMS key used to encrypt the archive.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Timestamp of when the archive was updated.
  final pulumi.Input<String?>? lastUpdatedTimestamp;
  /// Name of the archive.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Retention policy for the archive. See `retention` Block.
  final pulumi.Input<ArchiveRetention?>? retention;
  /// Effective retention policy for the archive, including the default (`SIX_MONTHS`) when no `retention` block is configured. See `retentionActual` Block below.
  final pulumi.Input<List<ArchiveRetentionActual>?>? retentionActuals;
  /// Current state of the archive. Always set to `ACTIVE` and will only be set to `PENDING_DELETION` when the archive is deleted.
  final pulumi.Input<String?>? state;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [ArchiveState].
  /// [arn] ARN of the archive.
  /// [createdTimestamp] Timestamp of when the archive was created.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the archive.
  /// [lastUpdatedTimestamp] Timestamp of when the archive was updated.
  /// [name] Name of the archive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retention] Retention policy for the archive. See `retention` Block.
  /// [retentionActuals] Effective retention policy for the archive, including the default (`SIX_MONTHS`) when no `retention` block is configured. See `retentionActual` Block below.
  /// [state] Current state of the archive. Always set to `ACTIVE` and will only be set to `PENDING_DELETION` when the archive is deleted.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ArchiveState({
    this.arn,
    this.createdTimestamp,
    this.kmsKeyArn,
    this.lastUpdatedTimestamp,
    this.name,
    this.region,
    this.retention,
    this.retentionActuals,
    this.state,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTimestamp': ?createdTimestamp,
      'kmsKeyArn': ?kmsKeyArn,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'name': ?name,
      'region': ?region,
      'retention': ?pulumi.Input.mapOptionalInputValue<ArchiveRetention, Map<String, dynamic>>(retention, (value) => value.toMap()),
      'retentionActuals': ?pulumi.Input.mapOptionalInputValue<List<ArchiveRetentionActual>, List<Map<String, dynamic>>>(retentionActuals, (value) => pulumi.Input.encodeList<ArchiveRetentionActual, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ArchiveState.fromMap(Map<String, dynamic> map) {
    return ArchiveState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTimestamp: (() { final guardedValue = map['lastUpdatedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArchiveRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionActuals: (() { final guardedValue = map['retentionActuals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArchiveRetentionActual>(guardedValue, (value) => ArchiveRetentionActual.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
