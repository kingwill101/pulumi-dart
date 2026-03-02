// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostAccountUserAttachment resources.
class HostAccountUserAttachmentState {
  /// A list IDs of the host account.
  final pulumi.Input<List<String>>? hostAccountIds;
  /// The ID of the host.
  final pulumi.Input<String>? hostId;
  /// The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  final pulumi.Input<String>? instanceId;
  /// The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  final pulumi.Input<String>? userId;

  /// Creates a new [HostAccountUserAttachmentState].
  /// [hostAccountIds] A list IDs of the host account.
  /// [hostId] The ID of the host.
  /// [instanceId] The ID of the Bastionhost instance where you want to authorize the user to manage the specified hosts and host accounts.
  /// [userId] The ID of the user that you want to authorize to manage the specified hosts and host accounts.
  HostAccountUserAttachmentState({
    this.hostAccountIds,
    this.hostId,
    this.instanceId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountIds': ?hostAccountIds,
      'hostId': ?hostId,
      'instanceId': ?instanceId,
      'userId': ?userId,
    };
  }

  factory HostAccountUserAttachmentState.fromMap(Map<String, dynamic> map) {
    return HostAccountUserAttachmentState(
      hostAccountIds: map['hostAccountIds'] == null ? null : ((map['hostAccountIds'] as List).cast<String>()).input(),
      hostId: map['hostId'] == null ? null : (map['hostId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

