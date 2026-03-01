// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostAccountShareKeyAttachment resources.
class HostAccountShareKeyAttachmentState {
  /// The ID list of the host account.
  final pulumi.Input<String>? hostAccountId;
  /// The ID of the host shared key.
  final pulumi.Input<String>? hostShareKeyId;
  /// The ID of the Bastion machine instance.
  final pulumi.Input<String>? instanceId;

  /// Creates a new [HostAccountShareKeyAttachmentState].
  /// [hostAccountId] The ID list of the host account.
  /// [hostShareKeyId] The ID of the host shared key.
  /// [instanceId] The ID of the Bastion machine instance.
  HostAccountShareKeyAttachmentState({
    pulumi.Output<String>? hostAccountId,
    pulumi.Output<String>? hostShareKeyId,
    pulumi.Output<String>? instanceId,
  }) :
      hostAccountId = pulumi.Input.asOptionalInput<String>(hostAccountId),
      hostShareKeyId = pulumi.Input.asOptionalInput<String>(hostShareKeyId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountId': ?hostAccountId,
      'hostShareKeyId': ?hostShareKeyId,
      'instanceId': ?instanceId,
    };
  }

  factory HostAccountShareKeyAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostAccountShareKeyAttachmentState(
      hostAccountId: map['hostAccountId'] == null ? null : pulumi.Output.create<String>(map['hostAccountId'] as String),
      hostShareKeyId: map['hostShareKeyId'] == null ? null : pulumi.Output.create<String>(map['hostShareKeyId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
    );
  }
}

