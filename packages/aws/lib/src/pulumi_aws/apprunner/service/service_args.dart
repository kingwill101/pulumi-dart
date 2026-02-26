// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_encryption_configuration/service_encryption_configuration.dart';
import '../service_health_check_configuration/service_health_check_configuration.dart';
import '../service_instance_configuration/service_instance_configuration.dart';
import '../service_network_configuration/service_network_configuration.dart';
import '../service_observability_configuration/service_observability_configuration.dart';
import '../service_source_configuration/service_source_configuration.dart';

/// The set of arguments for Service.
class ServiceArgs {
  /// ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration.
  final Input<String>? autoScalingConfigurationArn;

  /// An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details.
  final Input<ServiceEncryptionConfiguration>? encryptionConfiguration;

  /// Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details.
  final Input<ServiceHealthCheckConfiguration>? healthCheckConfiguration;

  /// The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details.
  final Input<ServiceInstanceConfiguration>? instanceConfiguration;

  /// Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details.
  final Input<ServiceNetworkConfiguration>? networkConfiguration;

  /// The observability configuration of your service. See Observability Configuration below for more details.
  final Input<ServiceObservabilityConfiguration>? observabilityConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the service.
  final Input<String> serviceName;

  /// The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  ///
  /// The following arguments are optional:
  final Input<ServiceSourceConfiguration> sourceConfiguration;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ServiceArgs({
    this.autoScalingConfigurationArn,
    this.encryptionConfiguration,
    this.healthCheckConfiguration,
    this.instanceConfiguration,
    this.networkConfiguration,
    this.observabilityConfiguration,
    this.region,
    required this.serviceName,
    required this.sourceConfiguration,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoScalingConfigurationArnValue = autoScalingConfigurationArn;
    if (autoScalingConfigurationArnValue != null) {
      map['autoScalingConfigurationArn'] = autoScalingConfigurationArnValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = Input.mapOptionalInputValue<
              ServiceEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    final healthCheckConfigurationValue = healthCheckConfiguration;
    if (healthCheckConfigurationValue != null) {
      map['healthCheckConfiguration'] = Input.mapOptionalInputValue<
              ServiceHealthCheckConfiguration, Map<String, dynamic>>(
          healthCheckConfigurationValue, (value) => value.toMap());
    }
    final instanceConfigurationValue = instanceConfiguration;
    if (instanceConfigurationValue != null) {
      map['instanceConfiguration'] = Input.mapOptionalInputValue<
              ServiceInstanceConfiguration, Map<String, dynamic>>(
          instanceConfigurationValue, (value) => value.toMap());
    }
    final networkConfigurationValue = networkConfiguration;
    if (networkConfigurationValue != null) {
      map['networkConfiguration'] = Input.mapOptionalInputValue<
              ServiceNetworkConfiguration, Map<String, dynamic>>(
          networkConfigurationValue, (value) => value.toMap());
    }
    final observabilityConfigurationValue = observabilityConfiguration;
    if (observabilityConfigurationValue != null) {
      map['observabilityConfiguration'] = Input.mapOptionalInputValue<
              ServiceObservabilityConfiguration, Map<String, dynamic>>(
          observabilityConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceName'] = serviceName;
    map['sourceConfiguration'] =
        Input.mapInputValue<ServiceSourceConfiguration, Map<String, dynamic>>(
            sourceConfiguration, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      autoScalingConfigurationArn:
          Input.asOptionalInput<String>(map['autoScalingConfigurationArn']),
      encryptionConfiguration:
          Input.asOptionalInput<ServiceEncryptionConfiguration>(
              map['encryptionConfiguration']),
      healthCheckConfiguration:
          Input.asOptionalInput<ServiceHealthCheckConfiguration>(
              map['healthCheckConfiguration']),
      instanceConfiguration:
          Input.asOptionalInput<ServiceInstanceConfiguration>(
              map['instanceConfiguration']),
      networkConfiguration: Input.asOptionalInput<ServiceNetworkConfiguration>(
          map['networkConfiguration']),
      observabilityConfiguration:
          Input.asOptionalInput<ServiceObservabilityConfiguration>(
              map['observabilityConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceName: Input.asInput<String>(map['serviceName']),
      sourceConfiguration:
          Input.asInput<ServiceSourceConfiguration>(map['sourceConfiguration']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
