// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'validation_check_result_response.dart';

/// ValidationCheckStatus defines the detailed validation check status.
class ValidationCheckStatusResponse {
  /// Individual checks which failed as part of the Preflight check execution.
  final List<ValidationCheckResultResponse> result;

  ValidationCheckStatusResponse({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['result'] =
        Input.encodeList<ValidationCheckResultResponse, Map<String, dynamic>>(
            result, (value) => value.toMap());
    return map;
  }

  factory ValidationCheckStatusResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckStatusResponse(
      result: Input.decodeList<ValidationCheckResultResponse>(
          map['result'],
          (value) => ValidationCheckResultResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
