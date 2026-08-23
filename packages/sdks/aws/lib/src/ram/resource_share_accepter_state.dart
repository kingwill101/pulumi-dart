// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceShareAccepter resources.
class ResourceShareAccepterState {
  /// ARN of the resource share invitation.
  final pulumi.Input<String>? invitationArn;
  /// Account ID of the receiver account which accepts the invitation.
  final pulumi.Input<String>? receiverAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of the resource ARNs shared via the resource share.
  final pulumi.Input<List<String>>? resources;
  /// Account ID of the sender account which submits the invitation.
  final pulumi.Input<String>? senderAccountId;
  /// ARN of the resource share.
  final pulumi.Input<String>? shareArn;
  /// ID of the resource share as displayed in the console.
  final pulumi.Input<String>? shareId;
  /// Name of the resource share.
  final pulumi.Input<String>? shareName;
  /// Status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED).
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceShareAccepterState].
  /// [invitationArn] ARN of the resource share invitation.
  /// [receiverAccountId] Account ID of the receiver account which accepts the invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resources] List of the resource ARNs shared via the resource share.
  /// [senderAccountId] Account ID of the sender account which submits the invitation.
  /// [shareArn] ARN of the resource share.
  /// [shareId] ID of the resource share as displayed in the console.
  /// [shareName] Name of the resource share.
  /// [status] Status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED).
  const ResourceShareAccepterState({
    this.invitationArn,
    this.receiverAccountId,
    this.region,
    this.resources,
    this.senderAccountId,
    this.shareArn,
    this.shareId,
    this.shareName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'invitationArn': ?invitationArn,
      'receiverAccountId': ?receiverAccountId,
      'region': ?region,
      'resources': ?resources,
      'senderAccountId': ?senderAccountId,
      'shareArn': ?shareArn,
      'shareId': ?shareId,
      'shareName': ?shareName,
      'status': ?status,
    };
  }

  factory ResourceShareAccepterState.fromMap(Map<String, dynamic> map) {
    return ResourceShareAccepterState(
      invitationArn: (() { final guardedValue = map['invitationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiverAccountId: (() { final guardedValue = map['receiverAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      senderAccountId: (() { final guardedValue = map['senderAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareArn: (() { final guardedValue = map['shareArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareId: (() { final guardedValue = map['shareId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
