// ignore_for_file: unused_element, unnecessary_cast

class GetCustomModelValidationMetric {
  /// The validation loss associated with the validator.
  final double validationLoss;

  /// Creates a new [GetCustomModelValidationMetric].
  /// [validationLoss] The validation loss associated with the validator.
  GetCustomModelValidationMetric({
    required this.validationLoss,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validationLoss'] = validationLoss;
    return map;
  }

  factory GetCustomModelValidationMetric.fromMap(Map<String, dynamic> map) {
    return GetCustomModelValidationMetric(
      validationLoss: map['validationLoss'] as double,
    );
  }
}
