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
  ResourceDirectoryState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? masterAccountId,
    pulumi.Output<String>? masterAccountName,
    pulumi.Output<String>? memberAccountDisplayNameSyncStatus,
    pulumi.Output<String>? memberDeletionStatus,
    pulumi.Output<String>? rootFolderId,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      masterAccountId = pulumi.Input.asOptionalInput<String>(masterAccountId),
      masterAccountName = pulumi.Input.asOptionalInput<String>(masterAccountName),
      memberAccountDisplayNameSyncStatus = pulumi.Input.asOptionalInput<String>(memberAccountDisplayNameSyncStatus),
      memberDeletionStatus = pulumi.Input.asOptionalInput<String>(memberDeletionStatus),
      rootFolderId = pulumi.Input.asOptionalInput<String>(rootFolderId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      masterAccountId: map['masterAccountId'] == null ? null : pulumi.Output.create<String>(map['masterAccountId'] as String),
      masterAccountName: map['masterAccountName'] == null ? null : pulumi.Output.create<String>(map['masterAccountName'] as String),
      memberAccountDisplayNameSyncStatus: map['memberAccountDisplayNameSyncStatus'] == null ? null : pulumi.Output.create<String>(map['memberAccountDisplayNameSyncStatus'] as String),
      memberDeletionStatus: map['memberDeletionStatus'] == null ? null : pulumi.Output.create<String>(map['memberDeletionStatus'] as String),
      rootFolderId: map['rootFolderId'] == null ? null : pulumi.Output.create<String>(map['rootFolderId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

