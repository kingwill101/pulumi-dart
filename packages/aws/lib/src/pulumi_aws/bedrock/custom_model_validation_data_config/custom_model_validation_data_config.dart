// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_model_validation_data_config_validator/custom_model_validation_data_config_validator.dart';

class CustomModelValidationDataConfig {
  /// Information about the validators.
  final List<CustomModelValidationDataConfigValidator> validators;

  CustomModelValidationDataConfig({
    required this.validators,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validators'] = Input.encodeList<
        CustomModelValidationDataConfigValidator,
        Map<String, dynamic>>(validators, (value) => value.toMap());
    return map;
  }

  factory CustomModelValidationDataConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelValidationDataConfig(
      validators: Input.decodeList<CustomModelValidationDataConfigValidator>(
          map['validators'],
          (value) => CustomModelValidationDataConfigValidator.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
