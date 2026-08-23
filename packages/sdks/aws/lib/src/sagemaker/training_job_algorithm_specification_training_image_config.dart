// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'training_job_algorithm_specification_training_image_config_training_repository_auth_config.dart';

class TrainingJobAlgorithmSpecificationTrainingImageConfig {
  /// Access mode for the training image repository.
  final pulumi.Input<String>? trainingRepositoryAccessMode;
  /// Authentication configuration for the training image repository. See `trainingRepositoryAuthConfig` below.
  final pulumi.Input<TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig>? trainingRepositoryAuthConfig;

  /// Creates a new [TrainingJobAlgorithmSpecificationTrainingImageConfig].
  /// [trainingRepositoryAccessMode] Access mode for the training image repository.
  /// [trainingRepositoryAuthConfig] Authentication configuration for the training image repository. See `trainingRepositoryAuthConfig` below.
  const TrainingJobAlgorithmSpecificationTrainingImageConfig({
    this.trainingRepositoryAccessMode,
    this.trainingRepositoryAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trainingRepositoryAccessMode': ?trainingRepositoryAccessMode,
      'trainingRepositoryAuthConfig': ?pulumi.Input.mapOptionalInputValue<TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig, Map<String, dynamic>>(trainingRepositoryAuthConfig, (value) => value.toMap()),
    };
  }

  factory TrainingJobAlgorithmSpecificationTrainingImageConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobAlgorithmSpecificationTrainingImageConfig(
      trainingRepositoryAccessMode: (() { final guardedValue = map['trainingRepositoryAccessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingRepositoryAuthConfig: (() { final guardedValue = map['trainingRepositoryAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrainingJobAlgorithmSpecificationTrainingImageConfigTrainingRepositoryAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
