// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_deployment_config.dart';
import 'inference_component_runtime_config.dart';
import 'inference_component_specification.dart';
import 'inference_component_timeouts.dart';

/// Input properties used for looking up and filtering InferenceComponent resources.
class InferenceComponentState {
  /// ARN of the inference component.
  final pulumi.Input<String?>? arn;
  /// Time when the inference component was created.
  final pulumi.Input<String?>? creationTime;
  /// Deployment configuration for the inference component, which controls the rollout strategy and rollback behavior. This directive applies only when the inference component is **updated** — the `CreateInferenceComponent` API does not accept it, so it has no effect on initial creation. It is not returned by the API and is therefore not refreshed into state or verified on import. See `deploymentConfig` Block.
  final pulumi.Input<InferenceComponentDeploymentConfig?>? deploymentConfig;
  /// ARN of the endpoint that hosts the inference component.
  final pulumi.Input<String?>? endpointArn;
  /// Name of an existing endpoint where you host the inference component.
  final pulumi.Input<String?>? endpointName;
  /// If the inference component status is `Failed`, the reason for the failure.
  final pulumi.Input<String?>? failureReason;
  /// Time when the inference component was last updated.
  final pulumi.Input<String?>? lastModifiedTime;
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
  /// Status of the inference component (e.g., `InService`, `Creating`, `Updating`, `Failed`, `Deleting`).
  final pulumi.Input<String?>? status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<InferenceComponentTimeouts?>? timeouts;
  /// Name of an existing production variant where you host the inference component. Required for a standard inference component; must be omitted for an adapter inference component (one that sets `baseInferenceComponentName`).
  final pulumi.Input<String?>? variantName;

  /// Creates a new [InferenceComponentState].
  /// [arn] ARN of the inference component.
  /// [creationTime] Time when the inference component was created.
  /// [deploymentConfig] Deployment configuration for the inference component, which controls the rollout strategy and rollback behavior. This directive applies only when the inference component is **updated** — the `CreateInferenceComponent` API does not accept it, so it has no effect on initial creation. It is not returned by the API and is therefore not refreshed into state or verified on import. See `deploymentConfig` Block.
  /// [endpointArn] ARN of the endpoint that hosts the inference component.
  /// [endpointName] Name of an existing endpoint where you host the inference component.
  /// [failureReason] If the inference component status is `Failed`, the reason for the failure.
  /// [lastModifiedTime] Time when the inference component was last updated.
  /// [name] Unique name to assign to the inference component.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [runtimeConfig] Runtime settings for a model that is deployed with an inference component. See `runtimeConfig` Block.
  /// [specification] Details about the resources to deploy with this inference component. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  /// [specifications] List of specification objects for the inference component, one per instance type. At least two blocks are required; configure `specification` instead to deploy to a single instance type. Exactly one of `specification` or `specifications` must be configured. See `specification` and `specifications` Block.
  /// [status] Status of the inference component (e.g., `InService`, `Creating`, `Updating`, `Failed`, `Deleting`).
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [variantName] Name of an existing production variant where you host the inference component. Required for a standard inference component; must be omitted for an adapter inference component (one that sets `baseInferenceComponentName`).
  const InferenceComponentState({
    this.arn,
    this.creationTime,
    this.deploymentConfig,
    this.endpointArn,
    this.endpointName,
    this.failureReason,
    this.lastModifiedTime,
    this.name,
    this.region,
    this.runtimeConfig,
    this.specification,
    this.specifications,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.variantName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'deploymentConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentDeploymentConfig, Map<String, dynamic>>(deploymentConfig, (value) => value.toMap()),
      'endpointArn': ?endpointArn,
      'endpointName': ?endpointName,
      'failureReason': ?failureReason,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'region': ?region,
      'runtimeConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentRuntimeConfig, Map<String, dynamic>>(runtimeConfig, (value) => value.toMap()),
      'specification': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecification, Map<String, dynamic>>(specification, (value) => value.toMap()),
      'specifications': ?pulumi.Input.mapOptionalInputValue<List<InferenceComponentSpecification>, List<Map<String, dynamic>>>(specifications, (value) => pulumi.Input.encodeList<InferenceComponentSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InferenceComponentTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'variantName': ?variantName,
    };
  }

  factory InferenceComponentState.fromMap(Map<String, dynamic> map) {
    return InferenceComponentState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentConfig: (() { final guardedValue = map['deploymentConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentDeploymentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointArn: (() { final guardedValue = map['endpointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeConfig: (() { final guardedValue = map['runtimeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentRuntimeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      specifications: (() { final guardedValue = map['specifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InferenceComponentSpecification>(guardedValue, (value) => InferenceComponentSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      variantName: (() { final guardedValue = map['variantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
