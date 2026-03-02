// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_inspector_assessment_target_assessment_target_args_doc}
/// The set of arguments for AssessmentTarget.
/// {@endtemplate}
/// {@macro pulumi_inspector_assessment_target_assessment_target_args_doc}
class AssessmentTargetArgs {
  /// The name of the assessment target.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  final pulumi.Input<String>? resourceGroupArn;

  /// Creates a new [AssessmentTargetArgs].
  /// [name] The name of the assessment target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceGroupArn] Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  AssessmentTargetArgs({
    this.name,
    this.region,
    this.resourceGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'resourceGroupArn': ?resourceGroupArn,
    };
  }

  factory AssessmentTargetArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentTargetArgs(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceGroupArn: map['resourceGroupArn'] == null ? null : ((map['resourceGroupArn'] as String).input()).input(),
    );
  }
}

