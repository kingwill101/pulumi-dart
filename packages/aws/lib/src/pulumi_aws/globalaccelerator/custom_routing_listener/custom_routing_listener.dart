import 'package:pulumi/pulumi.dart';
import '../custom_routing_listener_port_range/custom_routing_listener_port_range.dart';
import 'custom_routing_listener_args.dart';

/// Provides a Global Accelerator custom routing listener.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator custom routing listener.
///
///
/// Using `pulumi import`, import Global Accelerator custom routing listeners using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/customRoutingListener:CustomRoutingListener example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxxx
/// ```
class CustomRoutingListener extends CustomResource {
  /// The Amazon Resource Name (ARN) of a custom routing accelerator.
  late final Output<String> acceleratorArn;
  late final Output<String> arn;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  late final Output<List<CustomRoutingListenerPortRange>> portRanges;

  CustomRoutingListener(
    String name, {
    CustomRoutingListenerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/customRoutingListener:CustomRoutingListener',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceleratorArn = registerOutput<String>('acceleratorArn');
    this.arn = registerOutput<String>('arn');
    this.portRanges =
        registerOutput<List<CustomRoutingListenerPortRange>>('portRanges');
  }
}
