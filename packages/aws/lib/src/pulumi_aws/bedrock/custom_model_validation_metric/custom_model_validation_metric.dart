// ignore_for_file: unused_element, unnecessary_cast

class CustomModelValidationMetric {
  /// The validation loss associated with the validator.
  final double validationLoss;

  CustomModelValidationMetric({
    required this.validationLoss,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validationLoss'] = validationLoss;
    return map;
  }

  factory CustomModelValidationMetric.fromMap(Map<String, dynamic> map) {
    return CustomModelValidationMetric(
      validationLoss: map['validationLoss'] as double,
    );
  }
}
