// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_configuration_shadow_production_variant_core_dump_config.dart';
import 'endpoint_configuration_shadow_production_variant_managed_instance_scaling.dart';
import 'endpoint_configuration_shadow_production_variant_routing_config.dart';
import 'endpoint_configuration_shadow_production_variant_serverless_config.dart';

class EndpointConfigurationShadowProductionVariant {
  /// Size of the Elastic Inference (EI) instance to use for the production variant.
  final pulumi.Input<String>? acceleratorType;

  /// Timeout value, in seconds, for your inference container to pass health check by SageMaker AI Hosting. For more information about health check, see [How Your Container Should Respond to Health Check (Ping) Requests](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-algo-ping-requests). Valid values between `60` and `3600`.
  final pulumi.Input<int>? containerStartupHealthCheckTimeoutInSeconds;

  /// Core dump configuration from the model container when the process crashes. Fields are documented below.
  final pulumi.Input<
    EndpointConfigurationShadowProductionVariantCoreDumpConfig
  >?
  coreDumpConfig;

  /// Whether to turn on native AWS SSM access for a production variant behind an endpoint. By default, SSM access is disabled for all production variants behind endpoints. Ignored if `model_name` is not set (Inference Components endpoint).
  final pulumi.Input<bool>? enableSsmAccess;

  /// Option from a collection of preconfigured AMI images. Each image is configured by AWS with a set of software and driver versions. AWS optimizes these configurations for different machine learning workloads.
  final pulumi.Input<String>? inferenceAmiVersion;

  /// Initial number of instances used for auto-scaling.
  final pulumi.Input<int>? initialInstanceCount;

  /// Initial traffic distribution among all of the models that you specify in the endpoint configuration. If unspecified, defaults to `1.0`. Ignored if `model_name` is not set (Inference Components endpoint).
  final pulumi.Input<double>? initialVariantWeight;

  /// Type of instance to start.
  final pulumi.Input<String>? instanceType;

  /// Control the range in the number of instances that the endpoint provisions as it scales up or down to accommodate traffic.
  final pulumi.Input<
    EndpointConfigurationShadowProductionVariantManagedInstanceScaling
  >?
  managedInstanceScaling;

  /// Timeout value, in seconds, to download and extract the model that you want to host from S3 to the individual inference instance associated with this production variant. Valid values between `60` and `3600`.
  final pulumi.Input<int>? modelDataDownloadTimeoutInSeconds;

  /// Name of the model to use. Required unless using Inference Components (in which case `execution_role_arn` must be specified at the endpoint configuration level).
  final pulumi.Input<String>? modelName;

  /// How the endpoint routes incoming traffic. See routing_config below.
  final pulumi.Input<
    List<EndpointConfigurationShadowProductionVariantRoutingConfig>
  >?
  routingConfigs;

  /// How an endpoint performs asynchronous inference.
  final pulumi.Input<
    EndpointConfigurationShadowProductionVariantServerlessConfig
  >?
  serverlessConfig;

  /// Name of the variant. If omitted, the provider will assign a random, unique name.
  final pulumi.Input<String>? variantName;

  /// Size, in GB, of the ML storage volume attached to individual inference instance associated with the production variant. Valid values between `1` and `512`.
  final pulumi.Input<int>? volumeSizeInGb;

  /// Creates a new [EndpointConfigurationShadowProductionVariant].
  /// [acceleratorType] Size of the Elastic Inference (EI) instance to use for the production variant.
  /// [containerStartupHealthCheckTimeoutInSeconds] Timeout value, in seconds, for your inference container to pass health check by SageMaker AI Hosting. For more information about health check, see [How Your Container Should Respond to Health Check (Ping) Requests](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-algo-ping-requests). Valid values between `60` and `3600`.
  /// [coreDumpConfig] Core dump configuration from the model container when the process crashes. Fields are documented below.
  /// [enableSsmAccess] Whether to turn on native AWS SSM access for a production variant behind an endpoint. By default, SSM access is disabled for all production variants behind endpoints. Ignored if `model_name` is not set (Inference Components endpoint).
  /// [inferenceAmiVersion] Option from a collection of preconfigured AMI images. Each image is configured by AWS with a set of software and driver versions. AWS optimizes these configurations for different machine learning workloads.
  /// [initialInstanceCount] Initial number of instances used for auto-scaling.
  /// [initialVariantWeight] Initial traffic distribution among all of the models that you specify in the endpoint configuration. If unspecified, defaults to `1.0`. Ignored if `model_name` is not set (Inference Components endpoint).
  /// [instanceType] Type of instance to start.
  /// [managedInstanceScaling] Control the range in the number of instances that the endpoint provisions as it scales up or down to accommodate traffic.
  /// [modelDataDownloadTimeoutInSeconds] Timeout value, in seconds, to download and extract the model that you want to host from S3 to the individual inference instance associated with this production variant. Valid values between `60` and `3600`.
  /// [modelName] Name of the model to use. Required unless using Inference Components (in which case `execution_role_arn` must be specified at the endpoint configuration level).
  /// [routingConfigs] How the endpoint routes incoming traffic. See routing_config below.
  /// [serverlessConfig] How an endpoint performs asynchronous inference.
  /// [variantName] Name of the variant. If omitted, the provider will assign a random, unique name.
  /// [volumeSizeInGb] Size, in GB, of the ML storage volume attached to individual inference instance associated with the production variant. Valid values between `1` and `512`.
  EndpointConfigurationShadowProductionVariant({
    this.acceleratorType,
    this.containerStartupHealthCheckTimeoutInSeconds,
    this.coreDumpConfig,
    this.enableSsmAccess,
    this.inferenceAmiVersion,
    this.initialInstanceCount,
    this.initialVariantWeight,
    this.instanceType,
    this.managedInstanceScaling,
    this.modelDataDownloadTimeoutInSeconds,
    this.modelName,
    this.routingConfigs,
    this.serverlessConfig,
    this.variantName,
    this.volumeSizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorType': ?acceleratorType,
      'containerStartupHealthCheckTimeoutInSeconds':
          ?containerStartupHealthCheckTimeoutInSeconds,
      'coreDumpConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointConfigurationShadowProductionVariantCoreDumpConfig,
            Map<String, dynamic>
          >(coreDumpConfig, (value) => value.toMap()),
      'enableSsmAccess': ?enableSsmAccess,
      'inferenceAmiVersion': ?inferenceAmiVersion,
      'initialInstanceCount': ?initialInstanceCount,
      'initialVariantWeight': ?initialVariantWeight,
      'instanceType': ?instanceType,
      'managedInstanceScaling':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointConfigurationShadowProductionVariantManagedInstanceScaling,
            Map<String, dynamic>
          >(managedInstanceScaling, (value) => value.toMap()),
      'modelDataDownloadTimeoutInSeconds': ?modelDataDownloadTimeoutInSeconds,
      'modelName': ?modelName,
      'routingConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<EndpointConfigurationShadowProductionVariantRoutingConfig>,
            List<Map<String, dynamic>>
          >(
            routingConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  EndpointConfigurationShadowProductionVariantRoutingConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'serverlessConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EndpointConfigurationShadowProductionVariantServerlessConfig,
            Map<String, dynamic>
          >(serverlessConfig, (value) => value.toMap()),
      'variantName': ?variantName,
      'volumeSizeInGb': ?volumeSizeInGb,
    };
  }

  factory EndpointConfigurationShadowProductionVariant.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointConfigurationShadowProductionVariant(
      acceleratorType: (() {
        final guardedValue = map['acceleratorType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      containerStartupHealthCheckTimeoutInSeconds: (() {
        final guardedValue = map['containerStartupHealthCheckTimeoutInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      coreDumpConfig: (() {
        final guardedValue = map['coreDumpConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointConfigurationShadowProductionVariantCoreDumpConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableSsmAccess: (() {
        final guardedValue = map['enableSsmAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inferenceAmiVersion: (() {
        final guardedValue = map['inferenceAmiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialInstanceCount: (() {
        final guardedValue = map['initialInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      initialVariantWeight: (() {
        final guardedValue = map['initialVariantWeight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstanceScaling: (() {
        final guardedValue = map['managedInstanceScaling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointConfigurationShadowProductionVariantManagedInstanceScaling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      modelDataDownloadTimeoutInSeconds: (() {
        final guardedValue = map['modelDataDownloadTimeoutInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      modelName: (() {
        final guardedValue = map['modelName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routingConfigs: (() {
        final guardedValue = map['routingConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            EndpointConfigurationShadowProductionVariantRoutingConfig
          >(
            guardedValue,
            (value) =>
                EndpointConfigurationShadowProductionVariantRoutingConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      serverlessConfig: (() {
        final guardedValue = map['serverlessConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EndpointConfigurationShadowProductionVariantServerlessConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      variantName: (() {
        final guardedValue = map['variantName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeSizeInGb: (() {
        final guardedValue = map['volumeSizeInGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
