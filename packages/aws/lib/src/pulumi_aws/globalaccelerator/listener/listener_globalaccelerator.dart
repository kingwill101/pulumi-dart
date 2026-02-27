import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_port_range/listener_port_range.dart';
import 'listener_globalaccelerator_args.dart';

/// Provides a Global Accelerator listener.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Global Accelerator listener.
///
///
/// Using `pulumi import`, import Global Accelerator listeners using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:globalaccelerator/listener:Listener example arn:aws:globalaccelerator::111111111111:accelerator/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/listener/xxxxxxxx
/// ```
class ListenerGlobalaccelerator extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of your accelerator.
  late final pulumi.Output<String> acceleratorArn;

  /// The Amazon Resource Name (ARN) of the listener.
  late final pulumi.Output<String> arn;

  /// Direct all requests from a user to the same endpoint. Valid values are `NONE`, `SOURCE_IP`. Default: `NONE`. If `NONE`, Global Accelerator uses the "five-tuple" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If `SOURCE_IP`, Global Accelerator uses the "two-tuple" properties of source (client) IP address and destination IP address to select the hash value.
  late final pulumi.Output<String?> clientAffinity;

  /// The list of port ranges for the connections from clients to the accelerator. Fields documented below.
  late final pulumi.Output<List<ListenerPortRange>> portRanges;

  /// The protocol for the connections from clients to the accelerator. Valid values are `TCP`, `UDP`.
  late final pulumi.Output<String> protocol;

  ListenerGlobalaccelerator(
    String name, {
    ListenerGlobalacceleratorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:globalaccelerator/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceleratorArn = registerOutput<String>('acceleratorArn');
    this.arn = registerOutput<String>('arn');
    this.clientAffinity = registerOutput<String?>('clientAffinity');
    this.portRanges = registerOutput<List<ListenerPortRange>>('portRanges');
    this.protocol = registerOutput<String>('protocol');
  }
}
