// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_encryption_configuration.dart';
import 'service_health_check_configuration.dart';
import 'service_instance_configuration.dart';
import 'service_network_configuration.dart';
import 'service_observability_configuration.dart';
import 'service_source_configuration.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// ARN of the App Runner service.
  final pulumi.Input<String>? arn;
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
  final pulumi.Input<ServiceObservabilityConfiguration>? observabilityConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region.
  final pulumi.Input<String>? serviceId;
  /// Name of the service.
  final pulumi.Input<String>? serviceName;
  /// Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.
  final pulumi.Input<String>? serviceUrl;
  /// The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ServiceSourceConfiguration>? sourceConfiguration;
  /// Current state of the App Runner service.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ServiceState].
  /// [arn] ARN of the App Runner service.
  /// [autoScalingConfigurationArn] ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration.
  /// [encryptionConfiguration] An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details.
  /// [healthCheckConfiguration] Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details.
  /// [instanceConfiguration] The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details.
  /// [networkConfiguration] Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details.
  /// [observabilityConfiguration] The observability configuration of your service. See Observability Configuration below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceId] An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region.
  /// [serviceName] Name of the service.
  /// [serviceUrl] Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.
  /// [sourceConfiguration] The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  /// [status] Current state of the App Runner service.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ServiceState({
    this.arn,
    this.autoScalingConfigurationArn,
    this.encryptionConfiguration,
    this.healthCheckConfiguration,
    this.instanceConfiguration,
    this.networkConfiguration,
    this.observabilityConfiguration,
    this.region,
    this.serviceId,
    this.serviceName,
    this.serviceUrl,
    this.sourceConfiguration,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoScalingConfigurationArn': ?autoScalingConfigurationArn,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'healthCheckConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceHealthCheckConfiguration, Map<String, dynamic>>(healthCheckConfiguration, (value) => value.toMap()),
      'instanceConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceInstanceConfiguration, Map<String, dynamic>>(instanceConfiguration, (value) => value.toMap()),
      'networkConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkConfiguration, Map<String, dynamic>>(networkConfiguration, (value) => value.toMap()),
      'observabilityConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceObservabilityConfiguration, Map<String, dynamic>>(observabilityConfiguration, (value) => value.toMap()),
      'region': ?region,
      'serviceId': ?serviceId,
      'serviceName': ?serviceName,
      'serviceUrl': ?serviceUrl,
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autoScalingConfigurationArn: map['autoScalingConfigurationArn'] == null ? null : ((map['autoScalingConfigurationArn'] as String).input()).input(),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : ((ServiceEncryptionConfiguration.fromMap((map['encryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      healthCheckConfiguration: map['healthCheckConfiguration'] == null ? null : ((ServiceHealthCheckConfiguration.fromMap((map['healthCheckConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      instanceConfiguration: map['instanceConfiguration'] == null ? null : ((ServiceInstanceConfiguration.fromMap((map['instanceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      networkConfiguration: map['networkConfiguration'] == null ? null : ((ServiceNetworkConfiguration.fromMap((map['networkConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      observabilityConfiguration: map['observabilityConfiguration'] == null ? null : ((ServiceObservabilityConfiguration.fromMap((map['observabilityConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      serviceId: map['serviceId'] == null ? null : ((map['serviceId'] as String).input()).input(),
      serviceName: map['serviceName'] == null ? null : ((map['serviceName'] as String).input()).input(),
      serviceUrl: map['serviceUrl'] == null ? null : ((map['serviceUrl'] as String).input()).input(),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : ((ServiceSourceConfiguration.fromMap((map['sourceConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

