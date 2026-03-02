// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_preparation_error_response.dart';

class NotebookResourceInfoResponse {
  final pulumi.Input<String>? fqdn;
  /// The error that occurs when preparing notebook.
  final pulumi.Input<NotebookPreparationErrorResponse>? notebookPreparationError;
  /// the data plane resourceId that used to initialize notebook component
  final pulumi.Input<String>? resourceId;

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
      'notebookPreparationError': ?pulumi.Input.mapOptionalInputValue<NotebookPreparationErrorResponse, Map<String, dynamic>>(notebookPreparationError, (value) => value.toMap()),
      'resourceId': ?resourceId,
    };
  }

  factory NotebookResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return NotebookResourceInfoResponse(
      fqdn: map['fqdn'] == null ? null : (map['fqdn'] as String).input(),
      notebookPreparationError: map['notebookPreparationError'] == null ? null : (NotebookPreparationErrorResponse.fromMap((map['notebookPreparationError'] as Map).cast<String, dynamic>())).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

