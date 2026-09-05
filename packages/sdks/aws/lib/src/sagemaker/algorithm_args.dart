// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_inference_specification.dart';
import 'algorithm_timeouts.dart';
import 'algorithm_training_specification.dart';
import 'algorithm_validation_specification.dart';

/// {@template pulumi_sagemaker_algorithm_algorithm_args_doc}
/// The set of arguments for Algorithm.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_algorithm_algorithm_args_doc}
class AlgorithmArgs {
  /// Description of the algorithm.
  final pulumi.Input<String?>? algorithmDescription;
  /// Name of the algorithm.
  final pulumi.Input<String> algorithmName;
  /// Whether to certify the algorithm for AWS Marketplace.
  final pulumi.Input<bool?>? certifyForMarketplace;
  /// Configuration for inference jobs that use this algorithm. See Inference Specification.
  final pulumi.Input<AlgorithmInferenceSpecification?>? inferenceSpecification;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AlgorithmTimeouts?>? timeouts;
  /// Configuration for training jobs that use this algorithm. See Training Specification.
  final pulumi.Input<AlgorithmTrainingSpecification> trainingSpecification;
  /// Configuration used to validate the algorithm. See Validation Specification.
  final pulumi.Input<AlgorithmValidationSpecification?>? validationSpecification;

  /// Creates a new [AlgorithmArgs].
  /// [algorithmDescription] Description of the algorithm.
  /// [algorithmName] Name of the algorithm.
  /// [certifyForMarketplace] Whether to certify the algorithm for AWS Marketplace.
  /// [inferenceSpecification] Configuration for inference jobs that use this algorithm. See Inference Specification.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource.
  /// [timeouts] Optional.
  /// [trainingSpecification] Configuration for training jobs that use this algorithm. See Training Specification.
  /// [validationSpecification] Configuration used to validate the algorithm. See Validation Specification.
  const AlgorithmArgs({
    this.algorithmDescription,
    required this.algorithmName,
    this.certifyForMarketplace,
    this.inferenceSpecification,
    this.region,
    this.tags,
    this.timeouts,
    required this.trainingSpecification,
    this.validationSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmDescription': ?algorithmDescription,
      'algorithmName': algorithmName,
      'certifyForMarketplace': ?certifyForMarketplace,
      'inferenceSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecification, Map<String, dynamic>>(inferenceSpecification, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AlgorithmTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'trainingSpecification': pulumi.Input.mapInputValue<AlgorithmTrainingSpecification, Map<String, dynamic>>(trainingSpecification, (value) => value.toMap()),
      'validationSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecification, Map<String, dynamic>>(validationSpecification, (value) => value.toMap()),
    };
  }

  factory AlgorithmArgs.fromMap(Map<String, dynamic> map) {
    return AlgorithmArgs(
      algorithmDescription: (() { final guardedValue = map['algorithmDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      algorithmName: pulumi.Input.fromValue(map['algorithmName'] as String),
      certifyForMarketplace: (() { final guardedValue = map['certifyForMarketplace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      inferenceSpecification: (() { final guardedValue = map['inferenceSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingSpecification: pulumi.Input.fromValue(AlgorithmTrainingSpecification.fromMap((map['trainingSpecification']! as Map).cast<String, dynamic>())),
      validationSpecification: (() { final guardedValue = map['validationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
