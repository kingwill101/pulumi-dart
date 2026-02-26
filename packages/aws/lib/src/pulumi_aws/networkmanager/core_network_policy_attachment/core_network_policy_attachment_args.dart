// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CoreNetworkPolicyAttachment.
class CoreNetworkPolicyAttachmentArgs {
  /// ID of the core network that a policy will be attached to and made `LIVE`.
  final Input<String> coreNetworkId;

  /// Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  final Input<String> policyDocument;

  CoreNetworkPolicyAttachmentArgs({
    required this.coreNetworkId,
    required this.policyDocument,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    map['policyDocument'] = policyDocument;
    return map;
  }

  factory CoreNetworkPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return CoreNetworkPolicyAttachmentArgs(
      coreNetworkId: Input.asInput<String>(map['coreNetworkId']),
      policyDocument: Input.asInput<String>(map['policyDocument']),
    );
  }
}
