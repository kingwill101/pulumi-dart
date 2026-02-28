// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_check_result_response.dart';

/// ValidationCheckStatus defines the detailed validation check status.
class ValidationCheckStatusResponse {
  /// Individual checks which failed as part of the Preflight check execution.
  final List<ValidationCheckResultResponse> result;

  /// Creates a new [ValidationCheckStatusResponse].
  /// [result] Individual checks which failed as part of the Preflight check execution.
  ValidationCheckStatusResponse({
    required this.result,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['result'] = pulumi.Input.encodeList<ValidationCheckResultResponse,
        Map<String, dynamic>>(result, (value) => value.toMap());
    return map;
  }

  factory ValidationCheckStatusResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckStatusResponse(
      result: pulumi.Input.decodeList<ValidationCheckResultResponse>(
          map['result'],
          (value) => ValidationCheckResultResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
