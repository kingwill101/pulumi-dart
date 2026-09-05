// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomModelValidationMetric {
  /// The validation loss associated with the validator.
  final pulumi.Input<double> validationLoss;

  /// Creates a new [GetCustomModelValidationMetric].
  /// [validationLoss] The validation loss associated with the validator.
  const GetCustomModelValidationMetric({
    required this.validationLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validationLoss': validationLoss,
    };
  }

  factory GetCustomModelValidationMetric.fromMap(Map<String, dynamic> map) {
    return GetCustomModelValidationMetric(
      validationLoss: pulumi.Input.fromValue((map['validationLoss'] as num).toDouble()),
    );
  }
}
