// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'import_job_import_method.dart';
import 'import_job_protection_level.dart';

/// The set of arguments for ImportJob.
class ImportJobArgs {
  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final Input<String>? importJobId;

  /// Immutable. The wrapping method to be used for incoming key material.
  final Input<ImportJobImportMethod> importMethod;
  final Input<String> keyRingId;
  final Input<String>? location;
  final Input<String>? project;

  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  final Input<ImportJobProtectionLevel> protectionLevel;

  ImportJobArgs({
    this.importJobId,
    required this.importMethod,
    required this.keyRingId,
    this.location,
    this.project,
    required this.protectionLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final importJobIdValue = importJobId;
    if (importJobIdValue != null) {
      map['importJobId'] = importJobIdValue;
    }
    map['importMethod'] = Input.mapInputValue<ImportJobImportMethod, String>(
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
        Input.mapInputValue<ImportJobProtectionLevel, String>(
            protectionLevel, (value) => value.value);
    return map;
  }

  factory ImportJobArgs.fromMap(Map<String, dynamic> map) {
    return ImportJobArgs(
      importJobId: Input.asOptionalInput<String>(map['importJobId']),
      importMethod: Input.asInput<ImportJobImportMethod>(map['importMethod']),
      keyRingId: Input.asInput<String>(map['keyRingId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      protectionLevel:
          Input.asInput<ImportJobProtectionLevel>(map['protectionLevel']),
    );
  }
}
