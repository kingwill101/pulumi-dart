// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// Validation for inquired protectable items under a given container.
class InquiryValidationResponse {
  /// Error Additional Detail in case the status is non-success.
  final String additionalDetail;
  /// Error Detail in case the status is non-success.
  final ErrorDetailResponse? errorDetail;
  /// Dictionary to store the count of ProtectableItems with key POType.
  final dynamic protectableItemCount;
  /// Status for the Inquiry Validation.
  final String? status;

  /// Creates a new [InquiryValidationResponse].
  /// [additionalDetail] Error Additional Detail in case the status is non-success.
  /// [errorDetail] Error Detail in case the status is non-success.
  /// [protectableItemCount] Dictionary to store the count of ProtectableItems with key POType.
  /// [status] Status for the Inquiry Validation.
  InquiryValidationResponse({
    required this.additionalDetail,
    this.errorDetail,
    required this.protectableItemCount,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalDetail': additionalDetail,
      'errorDetail': ?errorDetail == null ? null : errorDetail!.toMap(),
      'protectableItemCount': protectableItemCount,
      'status': ?status,
    };
  }

  factory InquiryValidationResponse.fromMap(Map<String, dynamic> map) {
    return InquiryValidationResponse(
      additionalDetail: map['additionalDetail'] as String,
      errorDetail: map['errorDetail'] == null ? null : ErrorDetailResponse.fromMap((map['errorDetail'] as Map).cast<String, dynamic>()),
      protectableItemCount: map['protectableItemCount'],
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

