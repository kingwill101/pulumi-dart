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
  const ClientInstanceAttachmentState({
    this.category,
    this.clientInstanceId,
    this.createTime,
    this.eiInstanceType,
    this.instanceId,
    this.regionId,
    this.status,
  });

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
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientInstanceId: (() { final guardedValue = map['clientInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eiInstanceType: (() { final guardedValue = map['eiInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

