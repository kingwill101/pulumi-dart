// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_region_forwarding_rule_service_iam_policy_get_web_region_forwarding_rule_service_iam_policy_args_doc}
/// Arguments for getWebRegionForwardingRuleServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_region_forwarding_rule_service_iam_policy_get_web_region_forwarding_rule_service_iam_policy_args_doc}
class GetWebRegionForwardingRuleServiceIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> forwardingRuleRegionServiceName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetWebRegionForwardingRuleServiceIamPolicyArgs].
  /// [forwardingRuleRegionServiceName] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Used to find the parent resource to bind the IAM policy to. If not specified,
  GetWebRegionForwardingRuleServiceIamPolicyArgs({
    required String forwardingRuleRegionServiceName,
    String? project,
    String? region,
  }) :
      forwardingRuleRegionServiceName = pulumi.Input.asInput<String>(forwardingRuleRegionServiceName),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardingRuleRegionServiceName': forwardingRuleRegionServiceName,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetWebRegionForwardingRuleServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebRegionForwardingRuleServiceIamPolicyArgs(
      forwardingRuleRegionServiceName: map['forwardingRuleRegionServiceName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

