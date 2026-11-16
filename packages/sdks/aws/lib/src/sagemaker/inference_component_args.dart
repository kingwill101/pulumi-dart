// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_deployment_config.dart';
import 'inference_component_runtime_config.dart';
import 'inference_component_specification.dart';
import 'inference_component_timeouts.dart';

/// {@template pulumi_sagemaker_inference_component_inference_component_args_doc}
/// The set of arguments for InferenceComponent.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_inference_component_inference_component_args_doc}
class InferenceComponentArgs {
  /// Deployment configuration for the inference component, which controls the rollout strategy and rollback behavior. This directive applies only when the inference component is **updated** — the `CreateInferenceComponent` API does not accept it, so it has no effect on initial creation. It is not returned by the API and is therefore not refreshed into state or verified on import. See `deploymentConfig` Block.
  final pulumi.Input<InferenceComponentDeploymentConfig?>? deploymentConfig;
  /// Name of an existing endpoint where you host the inference component.
  final pulumi.Input<String> endpointName;
  /// Unique name to assign to the inference component.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Runtime settings for a model that is deployed with an inference component. See `runtimeConfig` Block.
  final pulumi.Input<InferenceComponentRuntimeConfig?>? runtimeConfig;
  /// Details about the resources to deploy with this inference component. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  final pulumi.Input<InferenceComponentSpecification?>? specification;
  /// List of specification objects for the inference component, one per instance type. At least two blocks are required; configure `specification` instead to deploy to a single instance type. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  final pulumi.Input<List<InferenceComponentSpecification>?>? specifications;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<InferenceComponentTimeouts?>? timeouts;
  /// Name of an existing production variant where you host the inference component. Required for a standard inference component; must be omitted for an adapter inference component (one that sets `baseInferenceComponentName`).
  final pulumi.Input<String?>? variantName;

  /// Creates a new [InferenceComponentArgs].
  /// [deploymentConfig] Deployment configuration for the inference component, which controls the rollout strategy and rollback behavior. This directive applies only when the inference component is **updated** — the `CreateInferenceComponent` API does not accept it, so it has no effect on initial creation. It is not returned by the API and is therefore not refreshed into state or verified on import. See `deploymentConfig` Block.
  /// [endpointName] Name of an existing endpoint where you host the inference component.
  /// [name] Unique name to assign to the inference component.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeConfig] Runtime settings for a model that is deployed with an inference component. See `runtimeConfig` Block.
  /// [specification] Details about the resources to deploy with this inference component. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  /// [specifications] List of specification objects for the inference component, one per instance type. At least two blocks are required; configure `specification` instead to deploy to a single instance type. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [variantName] Name of an existing production variant where you host the inference component. Required for a standard inference component; must be omitted for an adapter inference component (one that sets `baseInferenceComponentName`).
  const InferenceComponentArgs({
    this.deploymentConfig,
    required this.endpointName,
    this.name,
    this.region,
    this.runtimeConfig,
    this.specification,
    this.specifications,
    this.tags,
    this.timeouts,
    this.variantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentDeploymentConfig, Map<String, dynamic>>(deploymentConfig, (value) => value.toMap()),
      'endpointName': endpointName,
      'name': ?name,
      'region': ?region,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'specification': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecification, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'specifications': ?pulumi.Input.mapOptionalInputValue<List<InferenceComponentSpecification>, List<Map<String, dynamic>>>(specifications, (value) => pulumi.Input.encodeList<InferenceComponentSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InferenceComponentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'variantName': ?variantName,
    };
  }

  factory InferenceComponentArgs.fromMap(Map<String, dynamic> map) {
    return InferenceComponentArgs(
      deploymentConfig: (() { final guardedValue = map['deploymentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointName: pulumi.Input.fromValue(map['endpointName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specifications: (() { final guardedValue = map['specifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InferenceComponentSpecification>(guardedValue, (value) => InferenceComponentSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variantName: (() { final guardedValue = map['variantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
