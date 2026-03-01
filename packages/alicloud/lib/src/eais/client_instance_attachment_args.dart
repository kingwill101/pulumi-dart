// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eais_client_instance_attachment_client_instance_attachment_args_doc}
/// The set of arguments for ClientInstanceAttachment.
/// {@endtemplate}
/// {@macro pulumi_eais_client_instance_attachment_client_instance_attachment_args_doc}
class ClientInstanceAttachmentArgs {
  /// EAIS instance category, valid values: `eais`, `ei`, default is `eais`.
  final pulumi.Input<String>? category;
  /// The ID of the ECS or ECI instance bound to the EAIS instance.
  final pulumi.Input<String> clientInstanceId;
  /// The Ei instance specification, which is used to filter matching specifications for updating.
  final pulumi.Input<String>? eiInstanceType;
  /// The EAIS instance ID.
  final pulumi.Input<String> instanceId;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [ClientInstanceAttachmentArgs].
  /// [category] EAIS instance category, valid values: `eais`, `ei`, default is `eais`.
  /// [clientInstanceId] The ID of the ECS or ECI instance bound to the EAIS instance.
  /// [eiInstanceType] The Ei instance specification, which is used to filter matching specifications for updating.
  /// [instanceId] The EAIS instance ID.
  /// [status] The status of the resource
  ClientInstanceAttachmentArgs({
    String? category,
    required String clientInstanceId,
    String? eiInstanceType,
    required String instanceId,
    String? status,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      clientInstanceId = pulumi.Input.asInput<String>(clientInstanceId),
      eiInstanceType = pulumi.Input.asOptionalInput<String>(eiInstanceType),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'clientInstanceId': clientInstanceId,
      'eiInstanceType': ?eiInstanceType,
      'instanceId': instanceId,
      'status': ?status,
    };
  }

  factory ClientInstanceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ClientInstanceAttachmentArgs(
      category: map['category'] == null ? null : map['category'] as String,
      clientInstanceId: map['clientInstanceId'] as String,
      eiInstanceType: map['eiInstanceType'] == null ? null : map['eiInstanceType'] as String,
      instanceId: map['instanceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

