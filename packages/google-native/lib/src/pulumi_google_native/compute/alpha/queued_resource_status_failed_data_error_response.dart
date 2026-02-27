// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'queued_resource_status_failed_data_error_errors_item_response.dart';

/// The error(s) that caused the QueuedResource to enter the FAILED state.
class QueuedResourceStatusFailedDataErrorResponse {
  /// The array of errors encountered while processing this operation.
  final List<QueuedResourceStatusFailedDataErrorErrorsItemResponse> errors;

  QueuedResourceStatusFailedDataErrorResponse({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = Input.encodeList<
        QueuedResourceStatusFailedDataErrorErrorsItemResponse,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory QueuedResourceStatusFailedDataErrorResponse.fromMap(
      Map<String, dynamic> map) {
    return QueuedResourceStatusFailedDataErrorResponse(
      errors: Input.decodeList<
              QueuedResourceStatusFailedDataErrorErrorsItemResponse>(
          map['errors'],
          (value) =>
              QueuedResourceStatusFailedDataErrorErrorsItemResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
