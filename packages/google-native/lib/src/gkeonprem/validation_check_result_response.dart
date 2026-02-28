// ignore_for_file: unused_element, unnecessary_cast

/// ValidationCheckResult defines the details about the validation check.
class ValidationCheckResultResponse {
  /// The category of the validation.
  final String category;

  /// The description of the validation check.
  final String description;

  /// Detailed failure information, which might be unformatted.
  final String details;

  /// A human-readable message of the check failure.
  final String reason;

  /// The validation check state.
  final String state;

  /// Creates a new [ValidationCheckResultResponse].
  /// [category] The category of the validation.
  /// [description] The description of the validation check.
  /// [details] Detailed failure information, which might be unformatted.
  /// [reason] A human-readable message of the check failure.
  /// [state] The validation check state.
  ValidationCheckResultResponse({
    required this.category,
    required this.description,
    required this.details,
    required this.reason,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['category'] = category;
    map['description'] = description;
    map['details'] = details;
    map['reason'] = reason;
    map['state'] = state;
    return map;
  }

  factory ValidationCheckResultResponse.fromMap(Map<String, dynamic> map) {
    return ValidationCheckResultResponse(
      category: map['category'] as String,
      description: map['description'] as String,
      details: map['details'] as String,
      reason: map['reason'] as String,
      state: map['state'] as String,
    );
  }
}
