// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig {
  /// ARN of the Lambda function that provides credentials to authenticate to the private Docker registry.
  final pulumi.Input<String>? trainingRepositoryCredentialsProviderArn;

  /// Creates a new [TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig].
  /// [trainingRepositoryCredentialsProviderArn] ARN of the Lambda function that provides credentials to authenticate to the private Docker registry.
  const TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig({
    this.trainingRepositoryCredentialsProviderArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingRepositoryCredentialsProviderArn': ?trainingRepositoryCredentialsProviderArn,
    };
  }

  factory TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig(
      trainingRepositoryCredentialsProviderArn: (() { final guardedValue = map['trainingRepositoryCredentialsProviderArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
