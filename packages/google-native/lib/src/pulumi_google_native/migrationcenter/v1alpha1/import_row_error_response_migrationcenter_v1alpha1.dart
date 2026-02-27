// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response_migrationcenter_v1alpha1.dart';

/// A resource that reports the import job errors at row level.
class ImportRowErrorResponseMigrationcenterV1alpha1 {
  /// The list of errors detected in the row.
  final List<ImportErrorResponseMigrationcenterV1alpha1> errors;

  /// The row number where the error was detected.
  final int rowNumber;

  /// The name of the VM in the row.
  final String vmName;

  /// The VM UUID.
  final String vmUuid;

  ImportRowErrorResponseMigrationcenterV1alpha1({
    required this.errors,
    required this.rowNumber,
    required this.vmName,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = pulumi.Input.encodeList<
        ImportErrorResponseMigrationcenterV1alpha1,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    map['rowNumber'] = rowNumber;
    map['vmName'] = vmName;
    map['vmUuid'] = vmUuid;
    return map;
  }

  factory ImportRowErrorResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ImportRowErrorResponseMigrationcenterV1alpha1(
      errors:
          pulumi.Input.decodeList<ImportErrorResponseMigrationcenterV1alpha1>(
              map['errors'],
              (value) => ImportErrorResponseMigrationcenterV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rowNumber: map['rowNumber'] as int,
      vmName: map['vmName'] as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}
