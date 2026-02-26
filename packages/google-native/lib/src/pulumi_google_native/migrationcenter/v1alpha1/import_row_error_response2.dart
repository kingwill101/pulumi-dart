// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'import_error_response2.dart';

/// A resource that reports the import job errors at row level.
class ImportRowErrorResponse2 {
  /// The list of errors detected in the row.
  final List<ImportErrorResponse2> errors;

  /// The row number where the error was detected.
  final int rowNumber;

  /// The name of the VM in the row.
  final String vmName;

  /// The VM UUID.
  final String vmUuid;

  ImportRowErrorResponse2({
    required this.errors,
    required this.rowNumber,
    required this.vmName,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] =
        Input.encodeList<ImportErrorResponse2, Map<String, dynamic>>(
            errors, (value) => value.toMap());
    map['rowNumber'] = rowNumber;
    map['vmName'] = vmName;
    map['vmUuid'] = vmUuid;
    return map;
  }

  factory ImportRowErrorResponse2.fromMap(Map<String, dynamic> map) {
    return ImportRowErrorResponse2(
      errors: Input.decodeList<ImportErrorResponse2>(
          map['errors'],
          (value) => ImportErrorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      rowNumber: map['rowNumber'] as int,
      vmName: map['vmName'] as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}
