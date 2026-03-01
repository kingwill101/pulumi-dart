// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssessmentTarget resources.
class AssessmentTargetState {
  /// The target assessment ARN.
  final pulumi.Input<String>? arn;
  /// The name of the assessment target.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  final pulumi.Input<String>? resourceGroupArn;

  /// Creates a new [AssessmentTargetState].
  /// [arn] The target assessment ARN.
  /// [name] The name of the assessment target.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceGroupArn] Inspector Resource Group Amazon Resource Name (ARN) stating tags for instance matching. If not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
  AssessmentTargetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceGroupArn,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceGroupArn = pulumi.Input.asOptionalInput<String>(resourceGroupArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'region': ?region,
      'resourceGroupArn': ?resourceGroupArn,
    };
  }

  factory AssessmentTargetState.fromMap(Map<String, dynamic> map) {
    return AssessmentTargetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceGroupArn: map['resourceGroupArn'] == null ? null : pulumi.Output.create<String>(map['resourceGroupArn'] as String),
    );
  }
}

