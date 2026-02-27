// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_encryption_config/backup_encryption_config.dart';

/// The set of arguments for Backup.
class BackupArgs {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The ID of the alloydb backup.
  final pulumi.Input<String> backupId;

  /// The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  final pulumi.Input<String> clusterName;

  /// User-provided description of the backup.
  final pulumi.Input<String>? description;

  /// User-settable and human-readable display name for the Backup.
  final pulumi.Input<String>? displayName;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final pulumi.Input<BackupEncryptionConfig>? encryptionConfig;

  /// User-defined labels for the alloydb backup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the alloydb backup should reside.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The backup type, which suggests the trigger for the backup.
  /// Possible values are: `TYPE_UNSPECIFIED`, `ON_DEMAND`, `AUTOMATED`, `CONTINUOUS`.
  final pulumi.Input<String>? type;

  BackupArgs({
    this.annotations,
    required this.backupId,
    required this.clusterName,
    this.description,
    this.displayName,
    this.encryptionConfig,
    this.labels,
    required this.location,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['backupId'] = backupId;
    map['clusterName'] = clusterName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              BackupEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      backupId: pulumi.Input.asInput<String>(map['backupId']),
      clusterName: pulumi.Input.asInput<String>(map['clusterName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      encryptionConfig: pulumi.Input.asOptionalInput<BackupEncryptionConfig>(
          map['encryptionConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
