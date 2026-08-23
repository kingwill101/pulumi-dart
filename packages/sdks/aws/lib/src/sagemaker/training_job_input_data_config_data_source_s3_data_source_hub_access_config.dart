// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig {
  /// ARN of the hub content.
  final pulumi.Input<String> hubContentArn;

  /// Creates a new [TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig].
  /// [hubContentArn] ARN of the hub content.
  const TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig({
    required this.hubContentArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hubContentArn': hubContentArn,
    };
  }

  factory TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobInputDataConfigDataSourceS3DataSourceHubAccessConfig(
      hubContentArn: pulumi.Input.fromValue(map['hubContentArn'] as String),
    );
  }
}
