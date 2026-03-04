import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_switch_args.dart';
import 'threat_intelligence_switch_state.dart';

/// ## Import
///
/// Cloud Firewall Threat Intelligence Switch can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/threatIntelligenceSwitch:ThreatIntelligenceSwitch example <id>
/// ```
class ThreatIntelligenceSwitch extends pulumi.CustomResource {
  /// Rule action. Value:
  late final pulumi.Output<String?> action;

  /// The threat intelligence classification ID.
  late final pulumi.Output<String> categoryId;

  /// Switch status. Value:
  late final pulumi.Output<int?> enableStatus;

  /// Creates a new [ThreatIntelligenceSwitch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThreatIntelligenceSwitch]. {@macro pulumi_cloudfirewall_threat_intelligence_switch_threat_intelligence_switch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThreatIntelligenceSwitch(
    String name, {
    ThreatIntelligenceSwitchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudfirewall/threatIntelligenceSwitch:ThreatIntelligenceSwitch',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String?>('action');
    categoryId = registerOutput<String>('categoryId');
    enableStatus = registerOutput<int?>('enableStatus');
  }

  /// Gets an existing [ThreatIntelligenceSwitch] resource's state with the given [name] and [id].
  static ThreatIntelligenceSwitch get(
    String name,
    pulumi.Input<String> id, {
    ThreatIntelligenceSwitchState? state,
  }) {
    return ThreatIntelligenceSwitch._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ThreatIntelligenceSwitch._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cloudfirewall/threatIntelligenceSwitch:ThreatIntelligenceSwitch',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String?>('action');
    categoryId = registerOutput<String>('categoryId');
    enableStatus = registerOutput<int?>('enableStatus');
  }
}
