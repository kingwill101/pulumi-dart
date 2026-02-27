import 'package:pulumi/pulumi.dart' as pulumi;
import 'standards_control_args.dart';

/// Disable/enable Security Hub standards control in the current region.
///
/// The `aws.securityhub.StandardsControl` behaves differently from normal resources, in that
/// Pulumi does not _create_ this resource, but instead "adopts" it
/// into management. When you _delete_ this resource configuration, Pulumi "abandons" resource as is and just removes it from the state.
class StandardsControl extends pulumi.CustomResource {
  /// The identifier of the security standard control.
  late final pulumi.Output<String> controlId;

  /// The control status could be `ENABLED` or `DISABLED`. You have to specify `disabled_reason` argument for `DISABLED` control status.
  late final pulumi.Output<String> controlStatus;

  /// The date and time that the status of the security standard control was most recently updated.
  late final pulumi.Output<String> controlStatusUpdatedAt;

  /// The standard control longer description. Provides information about what the control is checking for.
  late final pulumi.Output<String> description;

  /// A description of the reason why you are disabling a security standard control. If you specify this attribute, `control_status` will be set to `DISABLED` automatically.
  late final pulumi.Output<String> disabledReason;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The list of requirements that are related to this control.
  late final pulumi.Output<List<String>> relatedRequirements;

  /// A link to remediation information for the control in the Security Hub user documentation.
  late final pulumi.Output<String> remediationUrl;

  /// The severity of findings generated from this security standard control.
  late final pulumi.Output<String> severityRating;

  /// The standards control ARN. See the AWS documentation for how to list existing controls using [`get-enabled-standards`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/get-enabled-standards.html) and [`describe-standards-controls`](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/securityhub/describe-standards-controls.html).
  late final pulumi.Output<String> standardsControlArn;

  /// The standard control title.
  late final pulumi.Output<String> title;

  StandardsControl(
    String name, {
    StandardsControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/standardsControl:StandardsControl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.controlId = registerOutput<String>('controlId');
    this.controlStatus = registerOutput<String>('controlStatus');
    this.controlStatusUpdatedAt =
        registerOutput<String>('controlStatusUpdatedAt');
    this.description = registerOutput<String>('description');
    this.disabledReason = registerOutput<String>('disabledReason');
    this.region = registerOutput<String>('region');
    this.relatedRequirements =
        registerOutput<List<String>>('relatedRequirements');
    this.remediationUrl = registerOutput<String>('remediationUrl');
    this.severityRating = registerOutput<String>('severityRating');
    this.standardsControlArn = registerOutput<String>('standardsControlArn');
    this.title = registerOutput<String>('title');
  }
}
