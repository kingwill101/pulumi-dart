// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  /// Whether to accept the model end-user license agreement.
  final pulumi.Input<bool?>? acceptEula;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig].
  /// [acceptEula] Whether to accept the model end-user license agreement.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    this.acceptEula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': ?acceptEula,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig(
      acceptEula: (() { final guardedValue = map['acceptEula']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
