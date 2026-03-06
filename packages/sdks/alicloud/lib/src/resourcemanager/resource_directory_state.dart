// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceDirectory resources.
class ResourceDirectoryState {
  /// The time when the resource directory was created
  final pulumi.Input<String>? createTime;
  /// The ID of the master account
  final pulumi.Input<String>? masterAccountId;
  /// The name of the master account
  final pulumi.Input<String>? masterAccountName;
  /// The status of the Member Display Name Synchronization feature. Valid values:
  /// - Enabled
  /// - Disabled
  final pulumi.Input<String>? memberAccountDisplayNameSyncStatus;
  /// The status of the member deletion feature. Valid values:
  /// - Enabled: The feature is enabled. You can call the DeleteAccount operation to delete members of the resource account type.
  /// - Disabled: The feature is disabled. You cannot delete members of the resource account type.
  final pulumi.Input<String>? memberDeletionStatus;
  /// The ID of the root folder
  final pulumi.Input<String>? rootFolderId;
  /// ScpStatus
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceDirectoryState].
  /// [createTime] The time when the resource directory was created
  /// [masterAccountId] The ID of the master account
  /// [masterAccountName] The name of the master account
  /// [memberAccountDisplayNameSyncStatus] The status of the Member Display Name Synchronization feature. Valid values:
  /// [memberDeletionStatus] The status of the member deletion feature. Valid values:
  /// [rootFolderId] The ID of the root folder
  /// [status] ScpStatus
  const ResourceDirectoryState({
    this.createTime,
    this.masterAccountId,
    this.masterAccountName,
    this.memberAccountDisplayNameSyncStatus,
    this.memberDeletionStatus,
    this.rootFolderId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'masterAccountId': ?masterAccountId,
      'masterAccountName': ?masterAccountName,
      'memberAccountDisplayNameSyncStatus': ?memberAccountDisplayNameSyncStatus,
      'memberDeletionStatus': ?memberDeletionStatus,
      'rootFolderId': ?rootFolderId,
      'status': ?status,
    };
  }

  factory ResourceDirectoryState.fromMap(Map<String, dynamic> map) {
    return ResourceDirectoryState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountId: (() { final guardedValue = map['masterAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterAccountName: (() { final guardedValue = map['masterAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberAccountDisplayNameSyncStatus: (() { final guardedValue = map['memberAccountDisplayNameSyncStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberDeletionStatus: (() { final guardedValue = map['memberDeletionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootFolderId: (() { final guardedValue = map['rootFolderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

