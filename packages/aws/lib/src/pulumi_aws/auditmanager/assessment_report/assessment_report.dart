import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_report_args.dart';

/// Resource for managing an AWS Audit Manager Assessment Report.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Audit Manager Assessment Reports using the assessment report `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/assessmentReport:AssessmentReport example abc123-de45
/// ```
class AssessmentReport extends pulumi.CustomResource {
  /// Unique identifier of the assessment to create the report from.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> assessmentId;

  /// Name of the user who created the assessment report.
  late final pulumi.Output<String> author;

  /// Description of the assessment report.
  late final pulumi.Output<String?> description;

  /// Name of the assessment report.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Current status of the specified assessment report. Valid values are `COMPLETE`, `IN_PROGRESS`, and `FAILED`.
  late final pulumi.Output<String> status;

  AssessmentReport(
    String name, {
    AssessmentReportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/assessmentReport:AssessmentReport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assessmentId = registerOutput<String>('assessmentId');
    this.author = registerOutput<String>('author');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
