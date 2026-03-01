// ignore_for_file: unused_element, unnecessary_cast

import 'blob_restore_parameters_response.dart';

/// Blob restore status.
class BlobRestoreStatusResponse {
  /// Failure reason when blob restore is failed.
  final String failureReason;
  /// Blob restore request parameters.
  final BlobRestoreParametersResponse parameters;
  /// Id for tracking blob restore request.
  final String restoreId;
  /// The status of blob restore progress. Possible values are: - InProgress: Indicates that blob restore is ongoing. - Complete: Indicates that blob restore has been completed successfully. - Failed: Indicates that blob restore is failed.
  final String status;

  /// Creates a new [BlobRestoreStatusResponse].
  /// [failureReason] Failure reason when blob restore is failed.
  /// [parameters] Blob restore request parameters.
  /// [restoreId] Id for tracking blob restore request.
  /// [status] The status of blob restore progress. Possible values are: - InProgress: Indicates that blob restore is ongoing. - Complete: Indicates that blob restore has been completed successfully. - Failed: Indicates that blob restore is failed.
  BlobRestoreStatusResponse({
    required this.failureReason,
    required this.parameters,
    required this.restoreId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': failureReason,
      'parameters': parameters.toMap(),
      'restoreId': restoreId,
      'status': status,
    };
  }

  factory BlobRestoreStatusResponse.fromMap(Map<String, dynamic> map) {
    return BlobRestoreStatusResponse(
      failureReason: map['failureReason'] as String,
      parameters: BlobRestoreParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
      restoreId: map['restoreId'] as String,
      status: map['status'] as String,
    );
  }
}

