// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'archive_retention.dart';

/// {@template pulumi_mailmanager_archive_archive_args_doc}
/// The set of arguments for Archive.
/// {@endtemplate}
/// {@macro pulumi_mailmanager_archive_archive_args_doc}
class ArchiveArgs {
  /// ARN of the KMS key used to encrypt the archive.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Name of the archive.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Retention policy for the archive. See `retention` Block.
  final pulumi.Input<ArchiveRetention?>? retention;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ArchiveArgs].
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the archive.
  /// [name] Name of the archive.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [retention] Retention policy for the archive. See `retention` Block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ArchiveArgs({
    this.kmsKeyArn,
    this.name,
    this.region,
    this.retention,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'region': ?region,
      'retention': ?pulumi.Input.mapOptionalInputValue<ArchiveRetention, Map<String, dynamic>>(retention, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ArchiveArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveArgs(
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retention: (() { final guardedValue = map['retention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArchiveRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
