// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_custom_model_validation_data_config_validator/get_custom_model_validation_data_config_validator.dart';

class GetCustomModelValidationDataConfig {
  /// Information about the validators.
  final List<GetCustomModelValidationDataConfigValidator> validators;

  GetCustomModelValidationDataConfig({
    required this.validators,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validators'] = Input.encodeList<
        GetCustomModelValidationDataConfigValidator,
        Map<String, dynamic>>(validators, (value) => value.toMap());
    return map;
  }

  factory GetCustomModelValidationDataConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomModelValidationDataConfig(
      validators: Input.decodeList<GetCustomModelValidationDataConfigValidator>(
          map['validators'],
          (value) => GetCustomModelValidationDataConfigValidator.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
