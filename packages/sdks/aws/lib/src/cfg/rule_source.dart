// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_source_custom_policy_details.dart';
import 'rule_source_source_detail.dart';

class RuleSource {
  /// Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to `CUSTOM_POLICY`. See Custom Policy Details Below.
  final pulumi.Input<RuleSourceCustomPolicyDetails>? customPolicyDetails;
  /// Indicates whether AWS or the customer owns and manages the AWS Config rule. Valid values are `AWS`, `CUSTOM_LAMBDA` or `CUSTOM_POLICY`. For more information about managed rules, see the [AWS Config Managed Rules documentation](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html). For more information about custom rules, see the [AWS Config Custom Rules documentation](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html). Custom Lambda Functions require permissions to allow the AWS Config service to invoke them, e.g., via the `aws.lambda.Permission` resource.
  final pulumi.Input<String> owner;
  /// Provides the source and type of the event that causes AWS Config to evaluate your AWS resources. Only valid if `owner` is `CUSTOM_LAMBDA` or `CUSTOM_POLICY`. See Source Detail Below.
  final pulumi.Input<List<RuleSourceSourceDetail>>? sourceDetails;
  /// For AWS Config managed rules, a predefined identifier, e.g `IAM_PASSWORD_POLICY`. For custom Lambda rules, the identifier is the ARN of the Lambda Function, such as `arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name` or the `arn` attribute of the `aws.lambda.Function` resource.
  final pulumi.Input<String>? sourceIdentifier;

  /// Creates a new [RuleSource].
  /// [customPolicyDetails] Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to `CUSTOM_POLICY`. See Custom Policy Details Below.
  /// [owner] Indicates whether AWS or the customer owns and manages the AWS Config rule. Valid values are `AWS`, `CUSTOM_LAMBDA` or `CUSTOM_POLICY`. For more information about managed rules, see the [AWS Config Managed Rules documentation](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html). For more information about custom rules, see the [AWS Config Custom Rules documentation](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html). Custom Lambda Functions require permissions to allow the AWS Config service to invoke them, e.g., via the `aws.lambda.Permission` resource.
  /// [sourceDetails] Provides the source and type of the event that causes AWS Config to evaluate your AWS resources. Only valid if `owner` is `CUSTOM_LAMBDA` or `CUSTOM_POLICY`. See Source Detail Below.
  /// [sourceIdentifier] For AWS Config managed rules, a predefined identifier, e.g `IAM_PASSWORD_POLICY`. For custom Lambda rules, the identifier is the ARN of the Lambda Function, such as `arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name` or the `arn` attribute of the `aws.lambda.Function` resource.
  RuleSource({
    this.customPolicyDetails,
    required this.owner,
    this.sourceDetails,
    this.sourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicyDetails': ?pulumi.Input.mapOptionalInputValue<RuleSourceCustomPolicyDetails, Map<String, dynamic>>(customPolicyDetails, (value) => value.toMap()),
      'owner': owner,
      'sourceDetails': ?pulumi.Input.mapOptionalInputValue<List<RuleSourceSourceDetail>, List<Map<String, dynamic>>>(sourceDetails, (value) => pulumi.Input.encodeList<RuleSourceSourceDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceIdentifier': ?sourceIdentifier,
    };
  }

  factory RuleSource.fromMap(Map<String, dynamic> map) {
    return RuleSource(
      customPolicyDetails: (() { final guardedValue = map['customPolicyDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleSourceCustomPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      sourceDetails: (() { final guardedValue = map['sourceDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSourceSourceDetail>(guardedValue, (value) => RuleSourceSourceDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceIdentifier: (() { final guardedValue = map['sourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

