// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_apigee_v1_api_category_response.dart';

/// Result data returned by getApicategory.
class GetApicategoryResult {
  /// The API category resource.
  final GoogleCloudApigeeV1ApiCategoryResponse data;

  /// Unique error code for the request, if any.
  final String errorCode;

  /// Description of the operation.
  final String message;

  /// Unique ID of the request.
  final String requestId;

  /// Status of the operation.
  final String status;

  GetApicategoryResult({
    required this.data,
    required this.errorCode,
    required this.message,
    required this.requestId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data.toMap();
    map['errorCode'] = errorCode;
    map['message'] = message;
    map['requestId'] = requestId;
    map['status'] = status;
    return map;
  }

  factory GetApicategoryResult.fromMap(Map<String, dynamic> map) {
    return GetApicategoryResult(
      data: GoogleCloudApigeeV1ApiCategoryResponse.fromMap(
          (map['data'] as Map).cast<String, dynamic>()),
      errorCode: map['errorCode'] as String,
      message: map['message'] as String,
      requestId: map['requestId'] as String,
      status: map['status'] as String,
    );
  }
}
