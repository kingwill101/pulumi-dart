// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_model_validation_data_config_validator.dart';

class GetCustomModelValidationDataConfig {
  /// Information about the validators.
  final pulumi.Input<List<GetCustomModelValidationDataConfigValidator>>
  validators;

  /// Creates a new [GetCustomModelValidationDataConfig].
  /// [validators] Information about the validators.
  GetCustomModelValidationDataConfig({required this.validators});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'validators':
          pulumi.Input.mapInputValue<
            List<GetCustomModelValidationDataConfigValidator>,
            List<Map<String, dynamic>>
          >(
            validators,
            (value) =>
                pulumi.Input.encodeList<
                  GetCustomModelValidationDataConfigValidator,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetCustomModelValidationDataConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomModelValidationDataConfig(
      validators: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetCustomModelValidationDataConfigValidator>(
          map['validators']!,
          (value) => GetCustomModelValidationDataConfigValidator.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
