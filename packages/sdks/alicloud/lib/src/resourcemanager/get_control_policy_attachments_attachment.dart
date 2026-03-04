// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlPolicyAttachmentsAttachment {
  /// The attach date.
  final pulumi.Input<String> attachDate;

  /// The description of policy.
  final pulumi.Input<String> description;

  /// The ID of the Control Policy Attachment.
  final pulumi.Input<String> id;

  /// The ID of policy.
  final pulumi.Input<String> policyId;

  /// The name of policy.
  final pulumi.Input<String> policyName;

  /// The type of policy.
  final pulumi.Input<String> policyType;

  /// Creates a new [GetControlPolicyAttachmentsAttachment].
  /// [attachDate] The attach date.
  /// [description] The description of policy.
  /// [id] The ID of the Control Policy Attachment.
  /// [policyId] The ID of policy.
  /// [policyName] The name of policy.
  /// [policyType] The type of policy.
  GetControlPolicyAttachmentsAttachment({
    required this.attachDate,
    required this.description,
    required this.id,
    required this.policyId,
    required this.policyName,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachDate': attachDate,
      'description': description,
      'id': id,
      'policyId': policyId,
      'policyName': policyName,
      'policyType': policyType,
    };
  }

  factory GetControlPolicyAttachmentsAttachment.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlPolicyAttachmentsAttachment(
      attachDate: pulumi.Input.fromValue(map['attachDate'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
    );
  }
}
