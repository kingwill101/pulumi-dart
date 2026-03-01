// ignore_for_file: unused_element, unnecessary_cast

import 'notebook_preparation_error_response.dart';

class NotebookResourceInfoResponse {
  final String? fqdn;
  /// The error that occurs when preparing notebook.
  final NotebookPreparationErrorResponse? notebookPreparationError;
  /// the data plane resourceId that used to initialize notebook component
  final String? resourceId;

  /// Creates a new [NotebookResourceInfoResponse].
  /// [fqdn] Optional.
  /// [notebookPreparationError] The error that occurs when preparing notebook.
  /// [resourceId] the data plane resourceId that used to initialize notebook component
  NotebookResourceInfoResponse({
    this.fqdn,
    this.notebookPreparationError,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'notebookPreparationError': ?notebookPreparationError == null ? null : notebookPreparationError!.toMap(),
      'resourceId': ?resourceId,
    };
  }

  factory NotebookResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return NotebookResourceInfoResponse(
      fqdn: map['fqdn'] == null ? null : map['fqdn'] as String,
      notebookPreparationError: map['notebookPreparationError'] == null ? null : NotebookPreparationErrorResponse.fromMap((map['notebookPreparationError'] as Map).cast<String, dynamic>()),
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

