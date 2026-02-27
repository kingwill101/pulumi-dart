import 'package:pulumi/pulumi.dart';
import '../endpoint_group_endpoint_configuration/endpoint_group_endpoint_configuration.dart';
import '../endpoint_group_port_override/endpoint_group_port_override.dart';
import 'endpoint_group_args.dart';

/// Provides a Global Accelerator endpoint group.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator endpoint group.
///
///
/// Using `pulumi import`, import Global Accelerator endpoint groups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/endpointGroup:EndpointGroup example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxx/endpoint-group/xxxxxxxx
/// ```
class EndpointGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) of the endpoint group.
  late final Output<String> arn;

  /// The list of endpoint objects. Fields documented below.
  late final Output<List<EndpointGroupEndpointConfiguration>?>
      endpointConfigurations;

  /// The name of the AWS Region where the endpoint group is located.
  late final Output<String> endpointGroupRegion;

  /// The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.
  late final Output<int?> healthCheckIntervalSeconds;

  /// If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (`/`). the provider will only perform drift detection of its value when present in a configuration.
  late final Output<String> healthCheckPath;

  /// The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.
  /// the provider will only perform drift detection of its value when present in a configuration.
  late final Output<int> healthCheckPort;

  /// The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP.
  late final Output<String?> healthCheckProtocol;

  /// The Amazon Resource Name (ARN) of the listener.
  late final Output<String> listenerArn;

  /// Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.
  late final Output<List<EndpointGroupPortOverride>?> portOverrides;

  /// The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3.
  late final Output<int?> thresholdCount;

  /// The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100.
  late final Output<double?> trafficDialPercentage;

  EndpointGroup(
    String name, {
    EndpointGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/endpointGroup:EndpointGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.endpointConfigurations =
        registerOutput<List<EndpointGroupEndpointConfiguration>?>(
            'endpointConfigurations');
    this.endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    this.healthCheckIntervalSeconds =
        registerOutput<int?>('healthCheckIntervalSeconds');
    this.healthCheckPath = registerOutput<String>('healthCheckPath');
    this.healthCheckPort = registerOutput<int>('healthCheckPort');
    this.healthCheckProtocol = registerOutput<String?>('healthCheckProtocol');
    this.listenerArn = registerOutput<String>('listenerArn');
    this.portOverrides =
        registerOutput<List<EndpointGroupPortOverride>?>('portOverrides');
    this.thresholdCount = registerOutput<int?>('thresholdCount');
    this.trafficDialPercentage =
        registerOutput<double?>('trafficDialPercentage');
  }
}
