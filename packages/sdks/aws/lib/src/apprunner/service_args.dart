// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_encryption_configuration.dart';
import 'service_health_check_configuration.dart';
import 'service_instance_configuration.dart';
import 'service_network_configuration.dart';
import 'service_observability_configuration.dart';
import 'service_source_configuration.dart';

/// {@template pulumi_apprunner_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_apprunner_service_service_args_doc}
class ServiceArgs {
  /// ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration.
  final pulumi.Input<String>? autoScalingConfigurationArn;

  /// An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details.
  final pulumi.Input<ServiceEncryptionConfiguration>? encryptionConfiguration;

  /// Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details.
  final pulumi.Input<ServiceHealthCheckConfiguration>? healthCheckConfiguration;

  /// The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details.
  final pulumi.Input<ServiceInstanceConfiguration>? instanceConfiguration;

  /// Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details.
  final pulumi.Input<ServiceNetworkConfiguration>? networkConfiguration;

  /// The observability configuration of your service. See Observability Configuration below for more details.
  final pulumi.Input<ServiceObservabilityConfiguration>?
  observabilityConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the service.
  final pulumi.Input<String> serviceName;

  /// The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ServiceSourceConfiguration> sourceConfiguration;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [autoScalingConfigurationArn] ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration.
  /// [encryptionConfiguration] An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details.
  /// [healthCheckConfiguration] Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details.
  /// [instanceConfiguration] The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details.
  /// [networkConfiguration] Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details.
  /// [observabilityConfiguration] The observability configuration of your service. See Observability Configuration below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceName] Name of the service.
  /// [sourceConfiguration] The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'autoScalingConfigurationArn': ?autoScalingConfigurationArn,
      'encryptionConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceEncryptionConfiguration,
            Map<String, dynamic>
          >(encryptionConfiguration, (value) => value.toMap()),
      'healthCheckConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceHealthCheckConfiguration,
            Map<String, dynamic>
          >(healthCheckConfiguration, (value) => value.toMap()),
      'instanceConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceInstanceConfiguration,
            Map<String, dynamic>
          >(instanceConfiguration, (value) => value.toMap()),
      'networkConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceNetworkConfiguration,
            Map<String, dynamic>
          >(networkConfiguration, (value) => value.toMap()),
      'observabilityConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceObservabilityConfiguration,
            Map<String, dynamic>
          >(observabilityConfiguration, (value) => value.toMap()),
      'region': ?region,
      'serviceName': serviceName,
      'sourceConfiguration':
          pulumi.Input.mapInputValue<
            ServiceSourceConfiguration,
            Map<String, dynamic>
          >(sourceConfiguration, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      autoScalingConfigurationArn: (() {
        final guardedValue = map['autoScalingConfigurationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionConfiguration: (() {
        final guardedValue = map['encryptionConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceEncryptionConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      healthCheckConfiguration: (() {
        final guardedValue = map['healthCheckConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceHealthCheckConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceConfiguration: (() {
        final guardedValue = map['instanceConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceInstanceConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkConfiguration: (() {
        final guardedValue = map['networkConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceNetworkConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      observabilityConfiguration: (() {
        final guardedValue = map['observabilityConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceObservabilityConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      sourceConfiguration: pulumi.Input.fromValue(
        ServiceSourceConfiguration.fromMap(
          (map['sourceConfiguration']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
