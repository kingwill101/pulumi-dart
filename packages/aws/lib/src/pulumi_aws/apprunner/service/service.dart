import 'package:pulumi/pulumi.dart';
import '../service_encryption_configuration/service_encryption_configuration.dart';
import '../service_health_check_configuration/service_health_check_configuration.dart';
import '../service_instance_configuration/service_instance_configuration.dart';
import '../service_network_configuration/service_network_configuration.dart';
import '../service_observability_configuration/service_observability_configuration.dart';
import '../service_source_configuration/service_source_configuration.dart';
import 'service_args.dart';

/// Manages an App Runner Service.
///
/// ## Example Usage
///
/// ### Service with a Code Repository Source
///
///
///
/// ### Service with an Image Repository Source
///
///
///
/// ### Service with Observability Configuration
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the App Runner service.
///
///
/// Using `pulumi import`, import App Runner Services using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/service:Service example arn:aws:apprunner:us-east-1:1234567890:service/example/0a03292a89764e5882c41d8f991c82fe
/// ```
class Service extends CustomResource {
  /// ARN of the App Runner service.
  late final Output<String> arn;

  /// ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration.
  late final Output<String> autoScalingConfigurationArn;

  /// An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details.
  late final Output<ServiceEncryptionConfiguration?> encryptionConfiguration;

  /// Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details.
  late final Output<ServiceHealthCheckConfiguration> healthCheckConfiguration;

  /// The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details.
  late final Output<ServiceInstanceConfiguration> instanceConfiguration;

  /// Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details.
  late final Output<ServiceNetworkConfiguration> networkConfiguration;

  /// The observability configuration of your service. See Observability Configuration below for more details.
  late final Output<ServiceObservabilityConfiguration?>
      observabilityConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region.
  late final Output<String> serviceId;

  /// Name of the service.
  late final Output<String> serviceName;

  /// Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application.
  late final Output<String> serviceUrl;

  /// The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details.
  ///
  /// The following arguments are optional:
  late final Output<ServiceSourceConfiguration> sourceConfiguration;

  /// Current state of the App Runner service.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Service(
    String name, {
    ServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoScalingConfigurationArn =
        registerOutput<String>('autoScalingConfigurationArn');
    this.encryptionConfiguration =
        registerOutput<ServiceEncryptionConfiguration?>(
            'encryptionConfiguration');
    this.healthCheckConfiguration =
        registerOutput<ServiceHealthCheckConfiguration>(
            'healthCheckConfiguration');
    this.instanceConfiguration =
        registerOutput<ServiceInstanceConfiguration>('instanceConfiguration');
    this.networkConfiguration =
        registerOutput<ServiceNetworkConfiguration>('networkConfiguration');
    this.observabilityConfiguration =
        registerOutput<ServiceObservabilityConfiguration?>(
            'observabilityConfiguration');
    this.region = registerOutput<String>('region');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceUrl = registerOutput<String>('serviceUrl');
    this.sourceConfiguration =
        registerOutput<ServiceSourceConfiguration>('sourceConfiguration');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
