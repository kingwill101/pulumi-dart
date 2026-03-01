// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CoreNetworkPolicyAttachment resources.
class CoreNetworkPolicyAttachmentState {
  /// ID of the core network that a policy will be attached to and made `LIVE`.
  final pulumi.Input<String>? coreNetworkId;
  /// Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  final pulumi.Input<String>? policyDocument;
  /// Current state of a core network.
  final pulumi.Input<String>? state;

  /// Creates a new [CoreNetworkPolicyAttachmentState].
  /// [coreNetworkId] ID of the core network that a policy will be attached to and made `LIVE`.
  /// [policyDocument] Policy document for creating a core network. Note that updating this argument will result in the new policy document version being set as the `LATEST` and `LIVE` policy document. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  /// [state] Current state of a core network.
  CoreNetworkPolicyAttachmentState({
    pulumi.Output<String>? coreNetworkId,
    pulumi.Output<String>? policyDocument,
    pulumi.Output<String>? state,
  }) :
      coreNetworkId = pulumi.Input.asOptionalInput<String>(coreNetworkId),
      policyDocument = pulumi.Input.asOptionalInput<String>(policyDocument),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': ?coreNetworkId,
      'policyDocument': ?policyDocument,
      'state': ?state,
    };
  }

  factory CoreNetworkPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return CoreNetworkPolicyAttachmentState(
      coreNetworkId: map['coreNetworkId'] == null ? null : pulumi.Output.create<String>(map['coreNetworkId'] as String),
      policyDocument: map['policyDocument'] == null ? null : pulumi.Output.create<String>(map['policyDocument'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

