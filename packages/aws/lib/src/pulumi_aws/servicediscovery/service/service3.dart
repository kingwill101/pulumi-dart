import 'package:pulumi/pulumi.dart';
import '../service_dns_config/service_dns_config.dart';
import '../service_health_check_config/service_health_check_config.dart';
import '../service_health_check_custom_config/service_health_check_custom_config.dart';
import 'service_args3.dart';

/// Provides a Service Discovery Service resource.
///
/// ## Example Usage
///
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Service using the service ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/service:Service example 0123456789
/// ```
class Service3 extends CustomResource {
  /// The ARN of the service.
  late final Output<String> arn;

  /// The description of the service.
  late final Output<String?> description;

  /// A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance. See `dns_config` Block for details.
  late final Output<ServiceDnsConfig?> dnsConfig;

  /// A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable. Defaults to `false`.
  late final Output<bool?> forceDestroy;

  /// A complex type that contains settings for an optional health check. Only for Public DNS namespaces. See `health_check_config` Block for details.
  late final Output<ServiceHealthCheckConfig?> healthCheckConfig;

  /// Please use `health_check_config` instead. See `health_check_custom_config` Block for details.
  late final Output<ServiceHealthCheckCustomConfig?> healthCheckCustomConfig;

  /// The name of the service.
  late final Output<String> name;

  /// The ID of the namespace that you want to use to create the service.
  late final Output<String> namespaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// If present, specifies that the service instances are only discoverable using the `DiscoverInstances` API operation. No DNS records is registered for the service instances. The only valid value is `HTTP`.
  late final Output<String> type;

  Service3(
    String name, {
    ServiceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.dnsConfig = registerOutput<ServiceDnsConfig?>('dnsConfig');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.healthCheckConfig =
        registerOutput<ServiceHealthCheckConfig?>('healthCheckConfig');
    this.healthCheckCustomConfig =
        registerOutput<ServiceHealthCheckCustomConfig?>(
            'healthCheckCustomConfig');
    this.name = registerOutput<String>('name');
    this.namespaceId = registerOutput<String>('namespaceId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
