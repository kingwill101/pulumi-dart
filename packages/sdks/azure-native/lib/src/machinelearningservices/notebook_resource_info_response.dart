// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_preparation_error_response.dart';

class NotebookResourceInfoResponse {
  final pulumi.Input<String?>? fqdn;
  final pulumi.Input<bool?>? isPrivateLinkEnabled;
  /// The error that occurs when preparing notebook.
  final pulumi.Input<NotebookPreparationErrorResponse?>? notebookPreparationError;
  /// the data plane resourceId that used to initialize notebook component
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [NotebookResourceInfoResponse].
  /// [fqdn] Optional.
  /// [isPrivateLinkEnabled] Optional.
  /// [notebookPreparationError] The error that occurs when preparing notebook.
  /// [resourceId] the data plane resourceId that used to initialize notebook component
  const NotebookResourceInfoResponse({
    this.fqdn,
    this.isPrivateLinkEnabled,
    this.notebookPreparationError,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'isPrivateLinkEnabled': ?isPrivateLinkEnabled,
      'notebookPreparationError': ?pulumi.Input.mapOptionalInputValue<NotebookPreparationErrorResponse, Map<String, dynamic>>(notebookPreparationError, (value) => value.toMap()),
      'resourceId': ?resourceId,
    };
  }

  factory NotebookResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return NotebookResourceInfoResponse(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrivateLinkEnabled: (() { final guardedValue = map['isPrivateLinkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notebookPreparationError: (() { final guardedValue = map['notebookPreparationError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookPreparationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
