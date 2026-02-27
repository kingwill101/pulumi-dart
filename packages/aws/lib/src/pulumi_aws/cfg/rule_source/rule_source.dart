// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_source_custom_policy_details/rule_source_custom_policy_details.dart';
import '../rule_source_source_detail/rule_source_source_detail.dart';

class RuleSource {
  /// Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to `CUSTOM_POLICY`. See Custom Policy Details Below.
  final RuleSourceCustomPolicyDetails? customPolicyDetails;

  /// Indicates whether AWS or the customer owns and manages the AWS Config rule. Valid values are `AWS`, `CUSTOM_LAMBDA` or `CUSTOM_POLICY`. For more information about managed rules, see the [AWS Config Managed Rules documentation](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html). For more information about custom rules, see the [AWS Config Custom Rules documentation](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html). Custom Lambda Functions require permissions to allow the AWS Config service to invoke them, e.g., via the `aws.lambda.Permission` resource.
  final String owner;

  /// Provides the source and type of the event that causes AWS Config to evaluate your AWS resources. Only valid if `owner` is `CUSTOM_LAMBDA` or `CUSTOM_POLICY`. See Source Detail Below.
  final List<RuleSourceSourceDetail>? sourceDetails;

  /// For AWS Config managed rules, a predefined identifier, e.g `IAM_PASSWORD_POLICY`. For custom Lambda rules, the identifier is the ARN of the Lambda Function, such as `arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name` or the `arn` attribute of the `aws.lambda.Function` resource.
  final String? sourceIdentifier;

  RuleSource({
    this.customPolicyDetails,
    required this.owner,
    this.sourceDetails,
    this.sourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPolicyDetailsValue = customPolicyDetails;
    if (customPolicyDetailsValue != null) {
      map['customPolicyDetails'] = customPolicyDetailsValue.toMap();
    }
    map['owner'] = owner;
    final sourceDetailsValue = sourceDetails;
    if (sourceDetailsValue != null) {
      map['sourceDetails'] =
          pulumi.Input.encodeList<RuleSourceSourceDetail, Map<String, dynamic>>(
              sourceDetailsValue, (value) => value.toMap());
    }
    final sourceIdentifierValue = sourceIdentifier;
    if (sourceIdentifierValue != null) {
      map['sourceIdentifier'] = sourceIdentifierValue;
    }
    return map;
  }

  factory RuleSource.fromMap(Map<String, dynamic> map) {
    return RuleSource(
      customPolicyDetails: map['customPolicyDetails'] == null
          ? null
          : RuleSourceCustomPolicyDetails.fromMap(
              (map['customPolicyDetails'] as Map).cast<String, dynamic>()),
      owner: map['owner'] as String,
      sourceDetails: map['sourceDetails'] == null
          ? null
          : pulumi.Input.decodeList<RuleSourceSourceDetail>(
              map['sourceDetails'],
              (value) => RuleSourceSourceDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceIdentifier: map['sourceIdentifier'] == null
          ? null
          : map['sourceIdentifier'] as String,
    );
  }
}
