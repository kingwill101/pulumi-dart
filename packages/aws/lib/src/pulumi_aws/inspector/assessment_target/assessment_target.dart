import 'package:pulumi/pulumi.dart';
import 'assessment_target_args.dart';

/// Provides an Inspector Classic Assessment Target
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Inspector assessment target.
///
///
/// Using `pulumi import`, import Inspector Classic Assessment Targets using their Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:inspector/assessmentTarget:AssessmentTarget example arn:aws:inspector:us-east-1:123456789012:target/0-xxxxxxx
/// ```
class AssessmentTarget extends CustomResource {
  /// The target assessment ARN.
  late final Output<String> arn;

  /// The name of the assessment target.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  late final Output<String?> resourceGroupArn;

  AssessmentTarget(
    String name, {
    AssessmentTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:inspector/assessmentTarget:AssessmentTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.resourceGroupArn = registerOutput<String?>('resourceGroupArn');
  }
}
