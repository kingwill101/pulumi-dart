import 'package:pulumi/pulumi.dart' as pulumi;
import '../control_tower_control_parameter/control_tower_control_parameter.dart';
import 'control_tower_control_args.dart';

/// Allows the application of pre-defined controls to organizational units. For more information on usage, please see the
/// [AWS Control Tower User Guide](https://docs.aws.amazon.com/controltower/latest/userguide/enable-guardrails.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Control Tower Controls using their `organizational_unit_arn/control_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/controlTowerControl:ControlTowerControl example arn:aws:organizations::123456789101:ou/o-qqaejywet/ou-qg5o-ufbhdtv3,arn:aws:controltower:us-east-1::control/WTDSMKDKDNLE
/// ```
class ControlTowerControl extends pulumi.CustomResource {
  /// The ARN of the EnabledControl resource.
  late final pulumi.Output<String> arn;

  /// The ARN of the control. Only Strongly recommended and Elective controls are permitted, with the exception of the Region deny guardrail.
  late final pulumi.Output<String> controlIdentifier;

  /// Parameter values which are specified to configure the control when you enable it. See Parameters for more details.
  late final pulumi.Output<List<ControlTowerControlParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of the organizational unit.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> targetIdentifier;

  ControlTowerControl(
    String name, {
    ControlTowerControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:controltower/controlTowerControl:ControlTowerControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.controlIdentifier = registerOutput<String>('controlIdentifier');
    this.parameters =
        registerOutput<List<ControlTowerControlParameter>?>('parameters');
    this.region = registerOutput<String>('region');
    this.targetIdentifier = registerOutput<String>('targetIdentifier');
  }
}
