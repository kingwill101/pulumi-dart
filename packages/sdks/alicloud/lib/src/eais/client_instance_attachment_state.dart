// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClientInstanceAttachment resources.
class ClientInstanceAttachmentState {
  /// EAIS instance category, valid values: `eais`, `ei`, default is `eais`.
  final pulumi.Input<String>? category;
  /// The ID of the ECS or ECI instance bound to the EAIS instance.
  final pulumi.Input<String>? clientInstanceId;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The Ei instance specification, which is used to filter matching specifications for updating.
  final pulumi.Input<String>? eiInstanceType;
  /// The EAIS instance ID.
  final pulumi.Input<String>? instanceId;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [ClientInstanceAttachmentState].
  /// [category] EAIS instance category, valid values: `eais`, `ei`, default is `eais`.
  /// [clientInstanceId] The ID of the ECS or ECI instance bound to the EAIS instance.
  /// [createTime] The creation time of the resource
  /// [eiInstanceType] The Ei instance specification, which is used to filter matching specifications for updating.
  /// [instanceId] The EAIS instance ID.
  /// [regionId] The region ID of the resource
  /// [status] The status of the resource
  ClientInstanceAttachmentState({
    pulumi.Output<String>? category,
    pulumi.Output<String>? clientInstanceId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? eiInstanceType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      clientInstanceId = pulumi.Input.asOptionalInput<String>(clientInstanceId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      eiInstanceType = pulumi.Input.asOptionalInput<String>(eiInstanceType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'clientInstanceId': ?clientInstanceId,
      'createTime': ?createTime,
      'eiInstanceType': ?eiInstanceType,
      'instanceId': ?instanceId,
      'regionId': ?regionId,
      'status': ?status,
    };
  }

  factory ClientInstanceAttachmentState.fromMap(Map<String, dynamic> map) {
    return ClientInstanceAttachmentState(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      clientInstanceId: map['clientInstanceId'] == null ? null : pulumi.Output.create<String>(map['clientInstanceId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      eiInstanceType: map['eiInstanceType'] == null ? null : pulumi.Output.create<String>(map['eiInstanceType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

