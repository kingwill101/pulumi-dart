import 'package:pulumi/pulumi.dart';
import '../control_control_mapping_source/control_control_mapping_source.dart';
import 'control_args.dart';

/// Resource for managing an AWS Audit Manager Control.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an Audit Manager Control using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/control:Control example abc123-de45
/// ```
class Control extends CustomResource {
  /// Recommended actions to carry out if the control isn't fulfilled.
  late final Output<String?> actionPlanInstructions;

  /// Title of the action plan for remediating the control.
  late final Output<String?> actionPlanTitle;

  /// Amazon Resource Name (ARN) of the control.
  /// * `control_mapping_sources.*.source_id` - Unique identifier for the source.
  late final Output<String> arn;

  /// Data mapping sources. See `control_mapping_sources` below.
  ///
  /// The following arguments are optional:
  late final Output<List<ControlControlMappingSource>?> controlMappingSources;

  /// Description of the control.
  late final Output<String?> description;

  /// Name of the control.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the control. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Steps to follow to determine if the control is satisfied.
  late final Output<String?> testingInformation;

  /// Type of control, such as a custom control or a standard control.
  late final Output<String> type;

  Control(
    String name, {
    ControlArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/control:Control',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.actionPlanInstructions =
        registerOutput<String?>('actionPlanInstructions');
    this.actionPlanTitle = registerOutput<String?>('actionPlanTitle');
    this.arn = registerOutput<String>('arn');
    this.controlMappingSources =
        registerOutput<List<ControlControlMappingSource>?>(
            'controlMappingSources');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.testingInformation = registerOutput<String?>('testingInformation');
    this.type = registerOutput<String>('type');
  }
}
