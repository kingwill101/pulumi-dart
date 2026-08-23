// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig {
  /// Whether to accept the model EULA.
  final pulumi.Input<bool> acceptEula;

  /// Creates a new [TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig].
  /// [acceptEula] Whether to accept the model EULA.
  const TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig({
    required this.acceptEula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': acceptEula,
    };
  }

  factory TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfigDataSourceS3DataSourceModelAccessConfig(
      acceptEula: pulumi.Input.fromValue(map['acceptEula'] as bool),
    );
  }
}
