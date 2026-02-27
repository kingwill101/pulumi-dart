import 'package:pulumi/pulumi.dart' as pulumi;
import '../assessment_assessment_reports_destination/assessment_assessment_reports_destination.dart';
import '../assessment_role/assessment_role.dart';
import '../assessment_roles_all/assessment_roles_all.dart';
import '../assessment_scope/assessment_scope.dart';
import 'assessment_args.dart';

/// Resource for managing an AWS Audit Manager Assessment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessments using the assessment `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessment:Assessment example abc123-de45
/// ```
class Assessment extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the assessment.
  late final pulumi.Output<String> arn;

  /// Assessment report storage destination configuration. See `assessment_reports_destination` below.
  late final pulumi.Output<AssessmentAssessmentReportsDestination?>
      assessmentReportsDestination;

  /// Description of the assessment.
  late final pulumi.Output<String?> description;

  /// Unique identifier of the framework the assessment will be created from.
  late final pulumi.Output<String> frameworkId;

  /// Name of the assessment.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of roles for the assessment. See `roles` below.
  late final pulumi.Output<List<AssessmentRole>> roles;

  /// Complete list of all roles with access to the assessment. This includes both roles explicitly configured via the `roles` block, and any roles which have access to all Audit Manager assessments by default.
  late final pulumi.Output<List<AssessmentRolesAll>> rolesAlls;

  /// Amazon Web Services accounts and services that are in scope for the assessment. See `scope` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AssessmentScope?> scope;

  /// Status of the assessment. Valid values are `ACTIVE` and `INACTIVE`.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the assessment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessment:Assessment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assessmentReportsDestination =
        registerOutput<AssessmentAssessmentReportsDestination?>(
            'assessmentReportsDestination');
    this.description = registerOutput<String?>('description');
    this.frameworkId = registerOutput<String>('frameworkId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roles = registerOutput<List<AssessmentRole>>('roles');
    this.rolesAlls = registerOutput<List<AssessmentRolesAll>>('rolesAlls');
    this.scope = registerOutput<AssessmentScope?>('scope');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
