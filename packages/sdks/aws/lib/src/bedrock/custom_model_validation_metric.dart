// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomModelValidationMetric {
  /// The validation loss associated with the validator.
  final pulumi.Input<double> validationLoss;

  /// Creates a new [CustomModelValidationMetric].
  /// [validationLoss] The validation loss associated with the validator.
  CustomModelValidationMetric({required this.validationLoss});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'validationLoss': validationLoss};
  }

  factory CustomModelValidationMetric.fromMap(Map<String, dynamic> map) {
    return CustomModelValidationMetric(
      validationLoss: pulumi.Input.fromValue(map['validationLoss'] as double),
    );
  }
}
