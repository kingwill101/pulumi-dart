import 'package:pulumi/pulumi.dart';
import '../custom_routing_endpoint_group_destination_configuration/custom_routing_endpoint_group_destination_configuration.dart';
import '../custom_routing_endpoint_group_endpoint_configuration/custom_routing_endpoint_group_endpoint_configuration.dart';
import 'custom_routing_endpoint_group_args.dart';

/// Provides a Global Accelerator custom routing endpoint group.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator custom routing endpoint group.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing endpoint groups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingEndpointGroup:CustomRoutingEndpointGroup example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxx/endpoint-group/xxxxxxxx
/// ```
class CustomRoutingEndpointGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) of the custom routing endpoint group.
  late final Output<String> arn;

  /// The port ranges and protocols for all endpoints in a custom routing endpoint group to accept client traffic on. Fields documented below.
  late final Output<List<CustomRoutingEndpointGroupDestinationConfiguration>>
      destinationConfigurations;

  /// The list of endpoint objects. Fields documented below.
  late final Output<List<CustomRoutingEndpointGroupEndpointConfiguration>?>
      endpointConfigurations;

  /// The name of the AWS Region where the custom routing endpoint group is located.
  late final Output<String> endpointGroupRegion;

  /// The Amazon Resource Name (ARN) of the custom routing listener.
  late final Output<String> listenerArn;

  CustomRoutingEndpointGroup(
    String name, {
    CustomRoutingEndpointGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingEndpointGroup:CustomRoutingEndpointGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.destinationConfigurations = registerOutput<
            List<CustomRoutingEndpointGroupDestinationConfiguration>>(
        'destinationConfigurations');
    this.endpointConfigurations =
        registerOutput<List<CustomRoutingEndpointGroupEndpointConfiguration>?>(
            'endpointConfigurations');
    this.endpointGroupRegion = registerOutput<String>('endpointGroupRegion');
    this.listenerArn = registerOutput<String>('listenerArn');
  }
}
