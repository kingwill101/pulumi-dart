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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? autoScalingConfigurationArn,
    pulumi.Output<ServiceEncryptionConfiguration>? encryptionConfiguration,
    pulumi.Output<ServiceHealthCheckConfiguration>? healthCheckConfiguration,
    pulumi.Output<ServiceInstanceConfiguration>? instanceConfiguration,
    pulumi.Output<ServiceNetworkConfiguration>? networkConfiguration,
    pulumi.Output<ServiceObservabilityConfiguration>? observabilityConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serviceId,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceUrl,
    pulumi.Output<ServiceSourceConfiguration>? sourceConfiguration,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoScalingConfigurationArn = pulumi.Input.asOptionalInput<String>(autoScalingConfigurationArn),
      encryptionConfiguration = pulumi.Input.asOptionalInput<ServiceEncryptionConfiguration>(encryptionConfiguration),
      healthCheckConfiguration = pulumi.Input.asOptionalInput<ServiceHealthCheckConfiguration>(healthCheckConfiguration),
      instanceConfiguration = pulumi.Input.asOptionalInput<ServiceInstanceConfiguration>(instanceConfiguration),
      networkConfiguration = pulumi.Input.asOptionalInput<ServiceNetworkConfiguration>(networkConfiguration),
      observabilityConfiguration = pulumi.Input.asOptionalInput<ServiceObservabilityConfiguration>(observabilityConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceUrl = pulumi.Input.asOptionalInput<String>(serviceUrl),
      sourceConfiguration = pulumi.Input.asOptionalInput<ServiceSourceConfiguration>(sourceConfiguration),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoScalingConfigurationArn: map['autoScalingConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['autoScalingConfigurationArn'] as String),
      encryptionConfiguration: map['encryptionConfiguration'] == null ? null : pulumi.Output.create<ServiceEncryptionConfiguration>(ServiceEncryptionConfiguration.fromMap((map['encryptionConfiguration'] as Map).cast<String, dynamic>())),
      healthCheckConfiguration: map['healthCheckConfiguration'] == null ? null : pulumi.Output.create<ServiceHealthCheckConfiguration>(ServiceHealthCheckConfiguration.fromMap((map['healthCheckConfiguration'] as Map).cast<String, dynamic>())),
      instanceConfiguration: map['instanceConfiguration'] == null ? null : pulumi.Output.create<ServiceInstanceConfiguration>(ServiceInstanceConfiguration.fromMap((map['instanceConfiguration'] as Map).cast<String, dynamic>())),
      networkConfiguration: map['networkConfiguration'] == null ? null : pulumi.Output.create<ServiceNetworkConfiguration>(ServiceNetworkConfiguration.fromMap((map['networkConfiguration'] as Map).cast<String, dynamic>())),
      observabilityConfiguration: map['observabilityConfiguration'] == null ? null : pulumi.Output.create<ServiceObservabilityConfiguration>(ServiceObservabilityConfiguration.fromMap((map['observabilityConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceUrl: map['serviceUrl'] == null ? null : pulumi.Output.create<String>(map['serviceUrl'] as String),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : pulumi.Output.create<ServiceSourceConfiguration>(ServiceSourceConfiguration.fromMap((map['sourceConfiguration'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

