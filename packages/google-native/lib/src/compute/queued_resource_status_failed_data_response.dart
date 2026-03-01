// ignore_for_file: unused_element, unnecessary_cast

import 'queued_resource_status_failed_data_error_response.dart';

/// Additional status detail for the FAILED state.
class QueuedResourceStatusFailedDataResponse {
  /// The error(s) that caused the QueuedResource to enter the FAILED state.
  final QueuedResourceStatusFailedDataErrorResponse error;

  /// Creates a new [QueuedResourceStatusFailedDataResponse].
  /// [error] The error(s) that caused the QueuedResource to enter the FAILED state.
  QueuedResourceStatusFailedDataResponse({required this.error});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'error': error.toMap()};
  }

  factory QueuedResourceStatusFailedDataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return QueuedResourceStatusFailedDataResponse(
      error: QueuedResourceStatusFailedDataErrorResponse.fromMap(
        (map['error'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
