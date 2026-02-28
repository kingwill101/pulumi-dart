// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_import_method.dart';
import 'import_job_protection_level.dart';

/// {@template pulumi_cloudkms_v1_import_job_args_doc}
/// The set of arguments for ImportJob.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_import_job_args_doc}
class ImportJobArgs {
  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String>? importJobId;

  /// Immutable. The wrapping method to be used for incoming key material.
  final pulumi.Input<ImportJobImportMethod> importMethod;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  final pulumi.Input<ImportJobProtectionLevel> protectionLevel;

  /// Creates a new [ImportJobArgs].
  /// [importJobId] Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  /// [importMethod] Immutable. The wrapping method to be used for incoming key material.
  /// [keyRingId] Required.
  /// [location] Optional.
  /// [project] Optional.
  /// [protectionLevel] Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  ImportJobArgs({
    String? importJobId,
    required ImportJobImportMethod importMethod,
    required String keyRingId,
    String? location,
    String? project,
    required ImportJobProtectionLevel protectionLevel,
  })  : importJobId = pulumi.Input.asOptionalInput<String>(importJobId),
        importMethod =
            pulumi.Input.asInput<ImportJobImportMethod>(importMethod),
        keyRingId = pulumi.Input.asInput<String>(keyRingId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        protectionLevel =
            pulumi.Input.asInput<ImportJobProtectionLevel>(protectionLevel);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final importJobIdValue = importJobId;
    if (importJobIdValue != null) {
      map['importJobId'] = importJobIdValue;
    }
    map['importMethod'] =
        pulumi.Input.mapInputValue<ImportJobImportMethod, String>(
            importMethod, (value) => value.value);
    map['keyRingId'] = keyRingId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['protectionLevel'] =
        pulumi.Input.mapInputValue<ImportJobProtectionLevel, String>(
            protectionLevel, (value) => value.value);
    return map;
  }

  factory ImportJobArgs.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs(
      importJobId:
          map['importJobId'] == null ? null : map['importJobId'] as String,
      importMethod:
          ImportJobImportMethod.fromValue(map['importMethod'] as String),
      keyRingId: map['keyRingId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      protectionLevel:
          ImportJobProtectionLevel.fromValue(map['protectionLevel'] as String),
    );
  }
}
