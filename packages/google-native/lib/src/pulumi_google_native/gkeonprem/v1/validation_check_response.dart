// ignore_for_file: unused_element, unnecessary_cast

import 'validation_check_status_response.dart';

/// ValidationCheck represents the result of preflight check.
class ValidationCheckResponse {
  /// Options used for the validation check
  final String option;

  /// The scenario when the preflight checks were run.
  final String scenario;

  /// The detailed validation check status.
  final ValidationCheckStatusResponse status;

  ValidationCheckResponse({
    required this.option,
    required this.scenario,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['option'] = option;
    map['scenario'] = scenario;
    map['status'] = status.toMap();
    return map;
  }

  factory ValidationCheckResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckResponse(
      option: map['option'] as String,
      scenario: map['scenario'] as String,
      status: ValidationCheckStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}
