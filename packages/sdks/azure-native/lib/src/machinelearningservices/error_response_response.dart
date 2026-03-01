// ignore_for_file: unused_element, unnecessary_cast

import 'error_detail_response.dart';

/// Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.).
class ErrorResponseResponse {
  /// The error object.
  final ErrorDetailResponse? error;

  /// Creates a new [ErrorResponseResponse].
  /// [error] The error object.
  ErrorResponseResponse({
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
    };
  }

  factory ErrorResponseResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponseResponse(
      error: map['error'] == null ? null : ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
    );
  }
}

