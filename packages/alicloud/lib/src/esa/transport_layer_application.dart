import 'package:pulumi/pulumi.dart' as pulumi;
import 'transport_layer_application_args.dart';
import 'transport_layer_application_rule.dart';

/// ## Import
///
/// ESA Transport Layer Application can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/transportLayerApplication:TransportLayerApplication example <site_id>:<application_id>
/// ```
class TransportLayerApplication extends pulumi.CustomResource {
  /// Layer 4 application ID.
  late final pulumi.Output<int> applicationId;
  /// Whether to enable China mainland network access optimization, default is disabled. Value range:
  late final pulumi.Output<String?> crossBorderOptimization;
  /// IP access rule switch. When enabled, the WAF's IP access rules apply to the transport layer application.
  late final pulumi.Output<String?> ipAccessRule;
  /// IPv6 switch.
  late final pulumi.Output<String?> ipv6;
  /// Domain name of the transport layer application
  late final pulumi.Output<String> recordName;
  /// The list of forwarding rules. Rule details. For each rule, other parameters are required except comments. See `rules` below.
  late final pulumi.Output<List<TransportLayerApplicationRule>> rules;
  /// Site ID.
  late final pulumi.Output<String> siteId;
  /// Status of the transport layer application, modification and deletion are not allowed.
  late final pulumi.Output<String> status;

  /// Creates a new [TransportLayerApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransportLayerApplication]. {@macro pulumi_esa_transport_layer_application_transport_layer_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransportLayerApplication(
    String name, {
    TransportLayerApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/transportLayerApplication:TransportLayerApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<int>('applicationId');
    this.crossBorderOptimization = registerOutput<String?>('crossBorderOptimization');
    this.ipAccessRule = registerOutput<String?>('ipAccessRule');
    this.ipv6 = registerOutput<String?>('ipv6');
    this.recordName = registerOutput<String>('recordName');
    this.rules = registerOutput<List<TransportLayerApplicationRule>>('rules');
    this.siteId = registerOutput<String>('siteId');
    this.status = registerOutput<String>('status');
  }
}
