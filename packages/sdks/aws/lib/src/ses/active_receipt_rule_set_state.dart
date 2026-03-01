// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActiveReceiptRuleSet resources.
class ActiveReceiptRuleSetState {
  /// The SES receipt rule set ARN.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the rule set
  final pulumi.Input<String>? ruleSetName;

  /// Creates a new [ActiveReceiptRuleSetState].
  /// [arn] The SES receipt rule set ARN.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleSetName] The name of the rule set
  ActiveReceiptRuleSetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleSetName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleSetName = pulumi.Input.asOptionalInput<String>(ruleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'ruleSetName': ?ruleSetName,
    };
  }

  factory ActiveReceiptRuleSetState.fromMap(Map<String, dynamic> map) {
    return ActiveReceiptRuleSetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleSetName: map['ruleSetName'] == null ? null : pulumi.Output.create<String>(map['ruleSetName'] as String),
    );
  }
}

