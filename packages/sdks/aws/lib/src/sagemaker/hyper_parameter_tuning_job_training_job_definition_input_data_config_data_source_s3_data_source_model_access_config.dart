// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  /// Whether to accept model EULA. Value must be `true`.
  final pulumi.Input<bool> acceptEula;

  /// Creates a new [HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig].
  /// [acceptEula] Whether to accept model EULA. Value must be `true`.
  const HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': acceptEula,
    };
  }

  factory HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobTrainingJobDefinitionInputDataConfigDataSourceS3DataSourceModelAccessConfig(
      acceptEula: pulumi.Input.fromValue(map['acceptEula'] as bool),
    );
  }
}
