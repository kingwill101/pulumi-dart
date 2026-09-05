// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig {
  /// ARN of the SageMaker AI Hub content.
  final pulumi.Input<String?>? hubContentArn;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig].
  /// [hubContentArn] ARN of the SageMaker AI Hub content.
  const AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig({
    this.hubContentArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubContentArn': ?hubContentArn,
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceHubAccessConfig(
      hubContentArn: (() { final guardedValue = map['hubContentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
