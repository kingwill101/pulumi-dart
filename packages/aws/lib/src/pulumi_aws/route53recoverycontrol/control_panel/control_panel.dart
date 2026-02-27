import 'package:pulumi/pulumi.dart';
import 'control_panel_args.dart';

/// Provides an AWS Route 53 Recovery Control Config Control Panel.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config Control Panel using the control panel arn. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/controlPanel:ControlPanel mypanel arn:aws:route53-recovery-control::313517334327:controlpanel/1bfba17df8684f5dab0467b71424f7e8
/// ```
class ControlPanel extends CustomResource {
  /// ARN of the control panel.
  late final Output<String> arn;

  /// ARN of the cluster in which this control panel will reside.
  late final Output<String> clusterArn;

  /// Whether a control panel is default.
  late final Output<bool> defaultControlPanel;

  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Number routing controls in a control panel.
  late final Output<int> routingControlCount;

  /// Status of control panel: `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  ControlPanel(
    String name, {
    ControlPanelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/controlPanel:ControlPanel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterArn = registerOutput<String>('clusterArn');
    this.defaultControlPanel = registerOutput<bool>('defaultControlPanel');
    this.name = registerOutput<String>('name');
    this.routingControlCount = registerOutput<int>('routingControlCount');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
