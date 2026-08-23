// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_inference_specification.dart';
import 'algorithm_timeouts.dart';
import 'algorithm_training_specification.dart';
import 'algorithm_validation_specification.dart';

/// Input properties used for looking up and filtering Algorithm resources.
class AlgorithmState {
  /// Description of the algorithm.
  final pulumi.Input<String>? algorithmDescription;
  /// Name of the algorithm.
  final pulumi.Input<String>? algorithmName;
  /// Status of the algorithm.
  final pulumi.Input<String>? algorithmStatus;
  /// ARN of the algorithm.
  final pulumi.Input<String>? arn;
  /// Whether to certify the algorithm for AWS Marketplace.
  final pulumi.Input<bool>? certifyForMarketplace;
  /// Time when the algorithm was created, in RFC3339 format.
  final pulumi.Input<String>? creationTime;
  /// Configuration for inference jobs that use this algorithm. See Inference Specification.
  final pulumi.Input<AlgorithmInferenceSpecification>? inferenceSpecification;
  /// AWS Marketplace product ID associated with the algorithm.
  final pulumi.Input<String>? productId;
  /// Region where this resource is managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including tags inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<AlgorithmTimeouts>? timeouts;
  /// Configuration for training jobs that use this algorithm. See Training Specification.
  final pulumi.Input<AlgorithmTrainingSpecification>? trainingSpecification;
  /// Configuration used to validate the algorithm. See Validation Specification.
  final pulumi.Input<AlgorithmValidationSpecification>? validationSpecification;

  /// Creates a new [AlgorithmState].
  /// [algorithmDescription] Description of the algorithm.
  /// [algorithmName] Name of the algorithm.
  /// [algorithmStatus] Status of the algorithm.
  /// [arn] ARN of the algorithm.
  /// [certifyForMarketplace] Whether to certify the algorithm for AWS Marketplace.
  /// [creationTime] Time when the algorithm was created, in RFC3339 format.
  /// [inferenceSpecification] Configuration for inference jobs that use this algorithm. See Inference Specification.
  /// [productId] AWS Marketplace product ID associated with the algorithm.
  /// [region] Region where this resource is managed. Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource.
  /// [tagsAll] Map of tags assigned to the resource, including tags inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [trainingSpecification] Configuration for training jobs that use this algorithm. See Training Specification.
  /// [validationSpecification] Configuration used to validate the algorithm. See Validation Specification.
  const AlgorithmState({
    this.algorithmDescription,
    this.algorithmName,
    this.algorithmStatus,
    this.arn,
    this.certifyForMarketplace,
    this.creationTime,
    this.inferenceSpecification,
    this.productId,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.trainingSpecification,
    this.validationSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithmDescription': ?algorithmDescription,
      'algorithmName': ?algorithmName,
      'algorithmStatus': ?algorithmStatus,
      'arn': ?arn,
      'certifyForMarketplace': ?certifyForMarketplace,
      'creationTime': ?creationTime,
      'inferenceSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecification, Map<String, dynamic>>(inferenceSpecification, (value) => value.toMap()),
      'productId': ?productId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AlgorithmTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'trainingSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmTrainingSpecification, Map<String, dynamic>>(trainingSpecification, (value) => value.toMap()),
      'validationSpecification': ?pulumi.Input.mapOptionalInputValue<AlgorithmValidationSpecification, Map<String, dynamic>>(validationSpecification, (value) => value.toMap()),
    };
  }

  factory AlgorithmState.fromMap(Map<String, dynamic> map) {
    return AlgorithmState(
      algorithmDescription: (() { final guardedValue = map['algorithmDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      algorithmName: (() { final guardedValue = map['algorithmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      algorithmStatus: (() { final guardedValue = map['algorithmStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certifyForMarketplace: (() { final guardedValue = map['certifyForMarketplace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceSpecification: (() { final guardedValue = map['inferenceSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trainingSpecification: (() { final guardedValue = map['trainingSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmTrainingSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationSpecification: (() { final guardedValue = map['validationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmValidationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
