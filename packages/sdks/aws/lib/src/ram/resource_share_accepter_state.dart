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
    pulumi.Output<String>? invitationArn,
    pulumi.Output<String>? receiverAccountId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? resources,
    pulumi.Output<String>? senderAccountId,
    pulumi.Output<String>? shareArn,
    pulumi.Output<String>? shareId,
    pulumi.Output<String>? shareName,
    pulumi.Output<String>? status,
  }) :
      invitationArn = pulumi.Input.asOptionalInput<String>(invitationArn),
      receiverAccountId = pulumi.Input.asOptionalInput<String>(receiverAccountId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources),
      senderAccountId = pulumi.Input.asOptionalInput<String>(senderAccountId),
      shareArn = pulumi.Input.asOptionalInput<String>(shareArn),
      shareId = pulumi.Input.asOptionalInput<String>(shareId),
      shareName = pulumi.Input.asOptionalInput<String>(shareName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      invitationArn: map['invitationArn'] == null ? null : pulumi.Output.create<String>(map['invitationArn'] as String),
      receiverAccountId: map['receiverAccountId'] == null ? null : pulumi.Output.create<String>(map['receiverAccountId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
      senderAccountId: map['senderAccountId'] == null ? null : pulumi.Output.create<String>(map['senderAccountId'] as String),
      shareArn: map['shareArn'] == null ? null : pulumi.Output.create<String>(map['shareArn'] as String),
      shareId: map['shareId'] == null ? null : pulumi.Output.create<String>(map['shareId'] as String),
      shareName: map['shareName'] == null ? null : pulumi.Output.create<String>(map['shareName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

