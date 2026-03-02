// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WafPolicyDomainAttachment resources.
class WafPolicyDomainAttachmentState {
  /// Access the accelerated domain name of the specified protection policy.
  final pulumi.Input<String>? domainName;
  /// The protection policy ID. Only one input is supported.
  final pulumi.Input<String>? policyId;

  /// Creates a new [WafPolicyDomainAttachmentState].
  /// [domainName] Access the accelerated domain name of the specified protection policy.
  /// [policyId] The protection policy ID. Only one input is supported.
  WafPolicyDomainAttachmentState({
    this.domainName,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'policyId': ?policyId,
    };
  }

  factory WafPolicyDomainAttachmentState.fromMap(Map<String, dynamic> map) {
    return WafPolicyDomainAttachmentState(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      policyId: map['policyId'] == null ? null : (map['policyId']! as String).input(),
    );
  }
}

