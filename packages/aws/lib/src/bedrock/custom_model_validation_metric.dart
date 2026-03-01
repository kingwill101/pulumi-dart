// ignore_for_file: unused_element, unnecessary_cast

class CustomModelValidationMetric {
  /// The validation loss associated with the validator.
  final double validationLoss;

  /// Creates a new [CustomModelValidationMetric].
  /// [validationLoss] The validation loss associated with the validator.
  CustomModelValidationMetric({required this.validationLoss});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'validationLoss': validationLoss};
  }

  factory CustomModelValidationMetric.fromMap(Map<String, dynamic> map) {
    return CustomModelValidationMetric(
      validationLoss: map['validationLoss'] as double,
    );
  }
}
