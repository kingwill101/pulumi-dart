// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_error_response.dart';

/// A resource that reports the import job errors at row level.
class ImportRowErrorResponse {
  /// The list of errors detected in the row.
  final List<ImportErrorResponse> errors;

  /// The row number where the error was detected.
  final int rowNumber;

  /// The name of the VM in the row.
  final String vmName;

  /// The VM UUID.
  final String vmUuid;

  /// Creates a new [ImportRowErrorResponse].
  /// [errors] The list of errors detected in the row.
  /// [rowNumber] The row number where the error was detected.
  /// [vmName] The name of the VM in the row.
  /// [vmUuid] The VM UUID.
  ImportRowErrorResponse({
    required this.errors,
    required this.rowNumber,
    required this.vmName,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          pulumi.Input.encodeList<ImportErrorResponse, Map<String, dynamic>>(
            errors,
            (value) => value.toMap(),
          ),
      'rowNumber': rowNumber,
      'vmName': vmName,
      'vmUuid': vmUuid,
    };
  }

  factory ImportRowErrorResponse.fromMap(Map<String, dynamic> map) {
    return ImportRowErrorResponse(
      errors: pulumi.Input.decodeList<ImportErrorResponse>(
        map['errors'],
        (value) =>
            ImportErrorResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      rowNumber: map['rowNumber'] as int,
      vmName: map['vmName'] as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}
