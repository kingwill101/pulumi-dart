import 'package:pulumi/pulumi.dart' as pulumi;
import '../event_endpoint_event_bus/event_endpoint_event_bus.dart';
import '../event_endpoint_replication_config/event_endpoint_replication_config.dart';
import '../event_endpoint_routing_config/event_endpoint_routing_config.dart';
import 'event_endpoint_args.dart';

/// Provides a resource to create an EventBridge Global Endpoint.
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EventBridge Global Endpoints using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/eventEndpoint:EventEndpoint imported_endpoint example-endpoint
/// ```
class EventEndpoint extends pulumi.CustomResource {
  /// The ARN of the endpoint that was created.
  late final pulumi.Output<String> arn;

  /// A description of the global endpoint.
  late final pulumi.Output<String?> description;

  /// The URL of the endpoint that was created.
  late final pulumi.Output<String> endpointUrl;

  /// The event buses to use. The names of the event buses must be identical in each Region. Exactly two event buses are required. Documented below.
  late final pulumi.Output<List<EventEndpointEventBus>> eventBuses;

  /// The name of the global endpoint.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Parameters used for replication. Documented below.
  late final pulumi.Output<EventEndpointReplicationConfig?> replicationConfig;

  /// The ARN of the IAM role used for replication between event buses.
  late final pulumi.Output<String?> roleArn;

  /// Parameters used for routing, including the health check and secondary Region. Documented below.
  late final pulumi.Output<EventEndpointRoutingConfig> routingConfig;

  EventEndpoint(
    String name, {
    EventEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/eventEndpoint:EventEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.endpointUrl = registerOutput<String>('endpointUrl');
    this.eventBuses = registerOutput<List<EventEndpointEventBus>>('eventBuses');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.replicationConfig =
        registerOutput<EventEndpointReplicationConfig?>('replicationConfig');
    this.roleArn = registerOutput<String?>('roleArn');
    this.routingConfig =
        registerOutput<EventEndpointRoutingConfig>('routingConfig');
  }
}
