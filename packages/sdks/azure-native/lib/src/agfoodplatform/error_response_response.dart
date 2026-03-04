// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// Common error response for all Azure Resource Manager APIs to return error details for failed operations. (This also follows the OData error response format.).
class ErrorResponseResponse {
  /// The error object.
  final pulumi.Input<ErrorDetailResponse>? error;

  /// Creates a new [ErrorResponseResponse].
  /// [error] The error object.
  ErrorResponseResponse({this.error});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error':
          ?pulumi.Input.mapOptionalInputValue<
            ErrorDetailResponse,
            Map<String, dynamic>
          >(error, (value) => value.toMap()),
    };
  }

  factory ErrorResponseResponse.fromMap(Map<String, dynamic> map) {
    return ErrorResponseResponse(
      error: (() {
        final guardedValue = map['error'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ErrorDetailResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
