// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_core_network_policy_attachment_core_network_policy_attachment_args_doc}
/// The set of arguments for CoreNetworkPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_core_network_policy_attachment_core_network_policy_attachment_args_doc}
class CoreNetworkPolicyAttachmentArgs {
  /// ID of the core network that a policy will be attached to and made `LIVE`.
  final pulumi.Input<String> coreNetworkId;

  /// Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  final pulumi.Input<String> policyDocument;

  /// Creates a new [CoreNetworkPolicyAttachmentArgs].
  /// [coreNetworkId] ID of the core network that a policy will be attached to and made `LIVE`.
  /// [policyDocument] Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  CoreNetworkPolicyAttachmentArgs({
    required String coreNetworkId,
    required String policyDocument,
  })  : coreNetworkId = pulumi.Input.asInput<String>(coreNetworkId),
        policyDocument = pulumi.Input.asInput<String>(policyDocument);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    map['policyDocument'] = policyDocument;
    return map;
  }

  factory CoreNetworkPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return CoreNetworkPolicyAttachmentArgs(
      coreNetworkId: map['coreNetworkId'] as String,
      policyDocument: map['policyDocument'] as String,
    );
  }
}
