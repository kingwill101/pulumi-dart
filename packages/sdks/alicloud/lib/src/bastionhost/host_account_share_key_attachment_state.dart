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
    this.hostAccountId,
    this.hostShareKeyId,
    this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountId': ?hostAccountId,
      'hostShareKeyId': ?hostShareKeyId,
      'instanceId': ?instanceId,
    };
  }

  factory HostAccountShareKeyAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostAccountShareKeyAttachmentState(
      hostAccountId: (() { final guardedValue = map['hostAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostShareKeyId: (() { final guardedValue = map['hostShareKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

