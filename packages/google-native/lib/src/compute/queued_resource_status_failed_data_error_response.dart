// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'queued_resource_status_failed_data_error_errors_item_response.dart';

/// The error(s) that caused the QueuedResource to enter the FAILED state.
class QueuedResourceStatusFailedDataErrorResponse {
  /// The array of errors encountered while processing this operation.
  final List<QueuedResourceStatusFailedDataErrorErrorsItemResponse> errors;

  /// Creates a new [QueuedResourceStatusFailedDataErrorResponse].
  /// [errors] The array of errors encountered while processing this operation.
  QueuedResourceStatusFailedDataErrorResponse({required this.errors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          pulumi.Input.encodeList<
            QueuedResourceStatusFailedDataErrorErrorsItemResponse,
            Map<String, dynamic>
          >(errors, (value) => value.toMap()),
    };
  }

  factory QueuedResourceStatusFailedDataErrorResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return QueuedResourceStatusFailedDataErrorResponse(
      errors:
          pulumi.Input.decodeList<
            QueuedResourceStatusFailedDataErrorErrorsItemResponse
          >(
            map['errors'],
            (value) =>
                QueuedResourceStatusFailedDataErrorErrorsItemResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
