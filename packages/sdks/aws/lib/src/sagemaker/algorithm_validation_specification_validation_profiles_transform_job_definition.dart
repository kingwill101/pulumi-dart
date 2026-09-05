// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_validation_specification_validation_profiles_transform_job_definition_transform_input.dart';
import 'algorithm_validation_specification_validation_profiles_transform_job_definition_transform_output.dart';
import 'algorithm_validation_specification_validation_profiles_transform_job_definition_transform_resources.dart';

class AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition {
  /// Batch strategy for the transform job. Allowed values are: `MultiRecord` and `SingleRecord`.
  final pulumi.Input<String?>? batchStrategy;
  /// Environment variables to pass to the transform container.
  final pulumi.Input<Map<String, String>?>? environment;
  /// Maximum number of parallel transform requests.
  final pulumi.Input<int?>? maxConcurrentTransforms;
  /// Maximum payload size, in MiB, for transform requests.
  final pulumi.Input<int?>? maxPayloadInMb;
  /// Input configuration for the transform job. See Transform Input.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput> transformInput;
  /// Output configuration for the transform job. See Transform Output.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput> transformOutput;
  /// Compute resources for the transform job. See Transform Resources.
  final pulumi.Input<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources> transformResources;

  /// Creates a new [AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition].
  /// [batchStrategy] Batch strategy for the transform job. Allowed values are: `MultiRecord` and `SingleRecord`.
  /// [environment] Environment variables to pass to the transform container.
  /// [maxConcurrentTransforms] Maximum number of parallel transform requests.
  /// [maxPayloadInMb] Maximum payload size, in MiB, for transform requests.
  /// [transformInput] Input configuration for the transform job. See Transform Input.
  /// [transformOutput] Output configuration for the transform job. See Transform Output.
  /// [transformResources] Compute resources for the transform job. See Transform Resources.
  const AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition({
    this.batchStrategy,
    this.environment,
    this.maxConcurrentTransforms,
    this.maxPayloadInMb,
    required this.transformInput,
    required this.transformOutput,
    required this.transformResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchStrategy': ?batchStrategy,
      'environment': ?environment,
      'maxConcurrentTransforms': ?maxConcurrentTransforms,
      'maxPayloadInMb': ?maxPayloadInMb,
      'transformInput': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput, Map<String, dynamic>>(transformInput, (value) => value.toMap()),
      'transformOutput': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput, Map<String, dynamic>>(transformOutput, (value) => value.toMap()),
      'transformResources': pulumi.Input.mapInputValue<AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources, Map<String, dynamic>>(transformResources, (value) => value.toMap()),
    };
  }

  factory AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition.fromMap(Map<String, dynamic> map) {
    return AlgorithmValidationSpecificationValidationProfilesTransformJobDefinition(
      batchStrategy: (() { final guardedValue = map['batchStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maxConcurrentTransforms: (() { final guardedValue = map['maxConcurrentTransforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxPayloadInMb: (() { final guardedValue = map['maxPayloadInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      transformInput: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformInput.fromMap((map['transformInput']! as Map).cast<String, dynamic>())),
      transformOutput: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformOutput.fromMap((map['transformOutput']! as Map).cast<String, dynamic>())),
      transformResources: pulumi.Input.fromValue(AlgorithmValidationSpecificationValidationProfilesTransformJobDefinitionTransformResources.fromMap((map['transformResources']! as Map).cast<String, dynamic>())),
    );
  }
}
