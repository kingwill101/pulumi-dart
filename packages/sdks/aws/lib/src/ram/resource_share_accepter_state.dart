// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceShareAccepter resources.
class ResourceShareAccepterState {
  /// The ARN of the resource share invitation.
  final pulumi.Input<String>? invitationArn;
  /// The account ID of the receiver account which accepts the invitation.
  final pulumi.Input<String>? receiverAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of the resource ARNs shared via the resource share.
  final pulumi.Input<List<String>>? resources;
  /// The account ID of the sender account which submits the invitation.
  final pulumi.Input<String>? senderAccountId;
  /// The ARN of the resource share.
  final pulumi.Input<String>? shareArn;
  /// The ID of the resource share as displayed in the console.
  final pulumi.Input<String>? shareId;
  /// The name of the resource share.
  final pulumi.Input<String>? shareName;
  /// The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED).
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceShareAccepterState].
  /// [invitationArn] The ARN of the resource share invitation.
  /// [receiverAccountId] The account ID of the receiver account which accepts the invitation.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resources] A list of the resource ARNs shared via the resource share.
  /// [senderAccountId] The account ID of the sender account which submits the invitation.
  /// [shareArn] The ARN of the resource share.
  /// [shareId] The ID of the resource share as displayed in the console.
  /// [shareName] The name of the resource share.
  /// [status] The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED).
  ResourceShareAccepterState({
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
      invitationArn: map['invitationArn'] == null ? null : ((map['invitationArn'] as String).input()).input(),
      receiverAccountId: map['receiverAccountId'] == null ? null : ((map['receiverAccountId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resources: map['resources'] == null ? null : (((map['resources'] as List).cast<String>()).input()).input(),
      senderAccountId: map['senderAccountId'] == null ? null : ((map['senderAccountId'] as String).input()).input(),
      shareArn: map['shareArn'] == null ? null : ((map['shareArn'] as String).input()).input(),
      shareId: map['shareId'] == null ? null : ((map['shareId'] as String).input()).input(),
      shareName: map['shareName'] == null ? null : ((map['shareName'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
    );
  }
}

