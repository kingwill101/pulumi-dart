// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_model_validation_data_config_validator.dart';

class CustomModelValidationDataConfig {
  /// Information about the validators.
  final List<CustomModelValidationDataConfigValidator> validators;

  /// Creates a new [CustomModelValidationDataConfig].
  /// [validators] Information about the validators.
  CustomModelValidationDataConfig({
    required this.validators,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validators'] = pulumi.Input.encodeList<
        CustomModelValidationDataConfigValidator,
        Map<String, dynamic>>(validators, (value) => value.toMap());
    return map;
  }

  factory CustomModelValidationDataConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelValidationDataConfig(
      validators:
          pulumi.Input.decodeList<CustomModelValidationDataConfigValidator>(
              map['validators'],
              (value) => CustomModelValidationDataConfigValidator.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
