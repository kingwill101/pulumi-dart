// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dcdn_waf_policy_domain_attachment_waf_policy_domain_attachment_args_doc}
/// The set of arguments for WafPolicyDomainAttachment.
/// {@endtemplate}
/// {@macro pulumi_dcdn_waf_policy_domain_attachment_waf_policy_domain_attachment_args_doc}
class WafPolicyDomainAttachmentArgs {
  /// Access the accelerated domain name of the specified protection policy.
  final pulumi.Input<String> domainName;
  /// The protection policy ID. Only one input is supported.
  final pulumi.Input<String> policyId;

  /// Creates a new [WafPolicyDomainAttachmentArgs].
  /// [domainName] Access the accelerated domain name of the specified protection policy.
  /// [policyId] The protection policy ID. Only one input is supported.
  WafPolicyDomainAttachmentArgs({
    required this.domainName,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'policyId': policyId,
    };
  }

  factory WafPolicyDomainAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return WafPolicyDomainAttachmentArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}

