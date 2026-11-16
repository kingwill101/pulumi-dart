// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_specification_compute_resource_requirements.dart';
import 'inference_component_specification_container.dart';
import 'inference_component_specification_data_cache_config.dart';
import 'inference_component_specification_scheduling_config.dart';
import 'inference_component_specification_startup_parameters.dart';

class InferenceComponentSpecification {
  /// Name of an existing inference component that is to contain the inference component that you're creating. Used for adapter inference components.
  final pulumi.Input<String?>? baseInferenceComponentName;
  /// Compute resources allocated to run a model. See `computeResourceRequirements` Block.
  final pulumi.Input<InferenceComponentSpecificationComputeResourceRequirements?>? computeResourceRequirements;
  /// Container that provides the runtime environment for a model. See `container` Block.
  final pulumi.Input<InferenceComponentSpecificationContainer?>? container;
  /// Settings that affect how the inference component caches data. See `dataCacheConfig` Block.
  final pulumi.Input<InferenceComponentSpecificationDataCacheConfig?>? dataCacheConfig;
  /// Instance type on which the copies are placed.
  final pulumi.Input<String?>? instanceType;
  /// Name of an existing SageMaker AI model object in your account that you want to deploy with the inference component.
  final pulumi.Input<String?>? modelName;
  /// Scheduling configuration for placing inference component copies. See `schedulingConfig` Block.
  final pulumi.Input<InferenceComponentSpecificationSchedulingConfig?>? schedulingConfig;
  /// Settings that take effect while the model container starts up. See `startupParameters` Block.
  final pulumi.Input<InferenceComponentSpecificationStartupParameters?>? startupParameters;

  /// Creates a new [InferenceComponentSpecification].
  /// [baseInferenceComponentName] Name of an existing inference component that is to contain the inference component that you're creating. Used for adapter inference components.
  /// [computeResourceRequirements] Compute resources allocated to run a model. See `computeResourceRequirements` Block.
  /// [container] Container that provides the runtime environment for a model. See `container` Block.
  /// [dataCacheConfig] Settings that affect how the inference component caches data. See `dataCacheConfig` Block.
  /// [instanceType] Instance type on which the copies are placed.
  /// [modelName] Name of an existing SageMaker AI model object in your account that you want to deploy with the inference component.
  /// [schedulingConfig] Scheduling configuration for placing inference component copies. See `schedulingConfig` Block.
  /// [startupParameters] Settings that take effect while the model container starts up. See `startupParameters` Block.
  const InferenceComponentSpecification({
    this.baseInferenceComponentName,
    this.computeResourceRequirements,
    this.container,
    this.dataCacheConfig,
    this.instanceType,
    this.modelName,
    this.schedulingConfig,
    this.startupParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseInferenceComponentName': ?baseInferenceComponentName,
      'computeResourceRequirements': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationComputeResourceRequirements, Map<String, dynamic>>(computeResourceRequirements, (value) => value.toMap()),
      'container': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
      'dataCacheConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationDataCacheConfig, Map<String, dynamic>>(dataCacheConfig, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'modelName': ?modelName,
      'schedulingConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationSchedulingConfig, Map<String, dynamic>>(schedulingConfig, (value) => value.toMap()),
      'startupParameters': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationStartupParameters, Map<String, dynamic>>(startupParameters, (value) => value.toMap()),
    };
  }

  factory InferenceComponentSpecification.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecification(
      baseInferenceComponentName: (() { final guardedValue = map['baseInferenceComponentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeResourceRequirements: (() { final guardedValue = map['computeResourceRequirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationComputeResourceRequirements.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataCacheConfig: (() { final guardedValue = map['dataCacheConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationDataCacheConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingConfig: (() { final guardedValue = map['schedulingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationSchedulingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupParameters: (() { final guardedValue = map['startupParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationStartupParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
