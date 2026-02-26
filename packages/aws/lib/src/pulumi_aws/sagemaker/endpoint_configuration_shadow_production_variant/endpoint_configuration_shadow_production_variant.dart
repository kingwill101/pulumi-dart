// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_configuration_shadow_production_variant_core_dump_config/endpoint_configuration_shadow_production_variant_core_dump_config.dart';
import '../endpoint_configuration_shadow_production_variant_managed_instance_scaling/endpoint_configuration_shadow_production_variant_managed_instance_scaling.dart';
import '../endpoint_configuration_shadow_production_variant_routing_config/endpoint_configuration_shadow_production_variant_routing_config.dart';
import '../endpoint_configuration_shadow_production_variant_serverless_config/endpoint_configuration_shadow_production_variant_serverless_config.dart';

class EndpointConfigurationShadowProductionVariant {
  /// Size of the Elastic Inference (EI) instance to use for the production variant.
  final String? acceleratorType;

  /// Timeout value, in seconds, for your inference container to pass health check by SageMaker AI Hosting. For more information about health check, see [How Your Container Should Respond to Health Check (Ping) Requests](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-inference-code.html#your-algorithms-inference-algo-ping-requests). Valid values between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>.
  final int? containerStartupHealthCheckTimeoutInSeconds;

  /// Core dump configuration from the model container when the process crashes. Fields are documented below.
  final EndpointConfigurationShadowProductionVariantCoreDumpConfig?
      coreDumpConfig;

  /// Whether to turn on native AWS SSM access for a production variant behind an endpoint. By default, SSM access is disabled for all production variants behind endpoints. Ignored if <span pulumi-lang-nodejs="`modelName`" pulumi-lang-dotnet="`ModelName`" pulumi-lang-go="`modelName`" pulumi-lang-python="`model_name`" pulumi-lang-yaml="`modelName`" pulumi-lang-java="`modelName`">`model_name`</span> is not set (Inference Components endpoint).
  final bool? enableSsmAccess;

  /// Option from a collection of preconfigured AMI images. Each image is configured by AWS with a set of software and driver versions. AWS optimizes these configurations for different machine learning workloads.
  final String? inferenceAmiVersion;

  /// Initial number of instances used for auto-scaling.
  final int? initialInstanceCount;

  /// Initial traffic distribution among all of the models that you specify in the endpoint configuration. If unspecified, defaults to `1.0`. Ignored if <span pulumi-lang-nodejs="`modelName`" pulumi-lang-dotnet="`ModelName`" pulumi-lang-go="`modelName`" pulumi-lang-python="`model_name`" pulumi-lang-yaml="`modelName`" pulumi-lang-java="`modelName`">`model_name`</span> is not set (Inference Components endpoint).
  final double? initialVariantWeight;

  /// Type of instance to start.
  final String? instanceType;

  /// Control the range in the number of instances that the endpoint provisions as it scales up or down to accommodate traffic.
  final EndpointConfigurationShadowProductionVariantManagedInstanceScaling?
      managedInstanceScaling;

  /// Timeout value, in seconds, to download and extract the model that you want to host from S3 to the individual inference instance associated with this production variant. Valid values between <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>.
  final int? modelDataDownloadTimeoutInSeconds;

  /// Name of the model to use. Required unless using Inference Components (in which case <span pulumi-lang-nodejs="`executionRoleArn`" pulumi-lang-dotnet="`ExecutionRoleArn`" pulumi-lang-go="`executionRoleArn`" pulumi-lang-python="`execution_role_arn`" pulumi-lang-yaml="`executionRoleArn`" pulumi-lang-java="`executionRoleArn`">`execution_role_arn`</span> must be specified at the endpoint configuration level).
  final String? modelName;

  /// How the endpoint routes incoming traffic. See<span pulumi-lang-nodejs=" routingConfig " pulumi-lang-dotnet=" RoutingConfig " pulumi-lang-go=" routingConfig " pulumi-lang-python=" routing_config " pulumi-lang-yaml=" routingConfig " pulumi-lang-java=" routingConfig "> routing_config </span>below.
  final List<EndpointConfigurationShadowProductionVariantRoutingConfig>?
      routingConfigs;

  /// How an endpoint performs asynchronous inference.
  final EndpointConfigurationShadowProductionVariantServerlessConfig?
      serverlessConfig;

  /// Name of the variant. If omitted, the provider will assign a random, unique name.
  final String? variantName;

  /// Size, in GB, of the ML storage volume attached to individual inference instance associated with the production variant. Valid values between <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> and <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>.
  final int? volumeSizeInGb;

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
    final map = <String, dynamic>{};
    final acceleratorTypeValue = acceleratorType;
    if (acceleratorTypeValue != null) {
      map['acceleratorType'] = acceleratorTypeValue;
    }
    final containerStartupHealthCheckTimeoutInSecondsValue =
        containerStartupHealthCheckTimeoutInSeconds;
    if (containerStartupHealthCheckTimeoutInSecondsValue != null) {
      map['containerStartupHealthCheckTimeoutInSeconds'] =
          containerStartupHealthCheckTimeoutInSecondsValue;
    }
    final coreDumpConfigValue = coreDumpConfig;
    if (coreDumpConfigValue != null) {
      map['coreDumpConfig'] = coreDumpConfigValue.toMap();
    }
    final enableSsmAccessValue = enableSsmAccess;
    if (enableSsmAccessValue != null) {
      map['enableSsmAccess'] = enableSsmAccessValue;
    }
    final inferenceAmiVersionValue = inferenceAmiVersion;
    if (inferenceAmiVersionValue != null) {
      map['inferenceAmiVersion'] = inferenceAmiVersionValue;
    }
    final initialInstanceCountValue = initialInstanceCount;
    if (initialInstanceCountValue != null) {
      map['initialInstanceCount'] = initialInstanceCountValue;
    }
    final initialVariantWeightValue = initialVariantWeight;
    if (initialVariantWeightValue != null) {
      map['initialVariantWeight'] = initialVariantWeightValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final managedInstanceScalingValue = managedInstanceScaling;
    if (managedInstanceScalingValue != null) {
      map['managedInstanceScaling'] = managedInstanceScalingValue.toMap();
    }
    final modelDataDownloadTimeoutInSecondsValue =
        modelDataDownloadTimeoutInSeconds;
    if (modelDataDownloadTimeoutInSecondsValue != null) {
      map['modelDataDownloadTimeoutInSeconds'] =
          modelDataDownloadTimeoutInSecondsValue;
    }
    final modelNameValue = modelName;
    if (modelNameValue != null) {
      map['modelName'] = modelNameValue;
    }
    final routingConfigsValue = routingConfigs;
    if (routingConfigsValue != null) {
      map['routingConfigs'] = Input.encodeList<
          EndpointConfigurationShadowProductionVariantRoutingConfig,
          Map<String, dynamic>>(routingConfigsValue, (value) => value.toMap());
    }
    final serverlessConfigValue = serverlessConfig;
    if (serverlessConfigValue != null) {
      map['serverlessConfig'] = serverlessConfigValue.toMap();
    }
    final variantNameValue = variantName;
    if (variantNameValue != null) {
      map['variantName'] = variantNameValue;
    }
    final volumeSizeInGbValue = volumeSizeInGb;
    if (volumeSizeInGbValue != null) {
      map['volumeSizeInGb'] = volumeSizeInGbValue;
    }
    return map;
  }

  factory EndpointConfigurationShadowProductionVariant.fromMap(
      Map<String, dynamic> map) {
    return EndpointConfigurationShadowProductionVariant(
      acceleratorType: map['acceleratorType'] == null
          ? null
          : map['acceleratorType'] as String,
      containerStartupHealthCheckTimeoutInSeconds:
          map['containerStartupHealthCheckTimeoutInSeconds'] == null
              ? null
              : map['containerStartupHealthCheckTimeoutInSeconds'] as int,
      coreDumpConfig: map['coreDumpConfig'] == null
          ? null
          : EndpointConfigurationShadowProductionVariantCoreDumpConfig.fromMap(
              (map['coreDumpConfig'] as Map).cast<String, dynamic>()),
      enableSsmAccess: map['enableSsmAccess'] == null
          ? null
          : map['enableSsmAccess'] as bool,
      inferenceAmiVersion: map['inferenceAmiVersion'] == null
          ? null
          : map['inferenceAmiVersion'] as String,
      initialInstanceCount: map['initialInstanceCount'] == null
          ? null
          : map['initialInstanceCount'] as int,
      initialVariantWeight: map['initialVariantWeight'] == null
          ? null
          : map['initialVariantWeight'] as double,
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      managedInstanceScaling: map['managedInstanceScaling'] == null
          ? null
          : EndpointConfigurationShadowProductionVariantManagedInstanceScaling
              .fromMap((map['managedInstanceScaling'] as Map)
                  .cast<String, dynamic>()),
      modelDataDownloadTimeoutInSeconds:
          map['modelDataDownloadTimeoutInSeconds'] == null
              ? null
              : map['modelDataDownloadTimeoutInSeconds'] as int,
      modelName: map['modelName'] == null ? null : map['modelName'] as String,
      routingConfigs: map['routingConfigs'] == null
          ? null
          : Input.decodeList<
                  EndpointConfigurationShadowProductionVariantRoutingConfig>(
              map['routingConfigs'],
              (value) =>
                  EndpointConfigurationShadowProductionVariantRoutingConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      serverlessConfig: map['serverlessConfig'] == null
          ? null
          : EndpointConfigurationShadowProductionVariantServerlessConfig
              .fromMap(
                  (map['serverlessConfig'] as Map).cast<String, dynamic>()),
      variantName:
          map['variantName'] == null ? null : map['variantName'] as String,
      volumeSizeInGb:
          map['volumeSizeInGb'] == null ? null : map['volumeSizeInGb'] as int,
    );
  }
}
