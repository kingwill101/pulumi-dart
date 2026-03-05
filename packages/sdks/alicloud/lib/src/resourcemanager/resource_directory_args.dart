// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_resource_directory_resource_directory_args_doc}
/// The set of arguments for ResourceDirectory.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_resource_directory_resource_directory_args_doc}
class ResourceDirectoryArgs {
  /// The status of the Member Display Name Synchronization feature. Valid values:
  /// - Enabled
  /// - Disabled
  final pulumi.Input<String>? memberAccountDisplayNameSyncStatus;
  /// The status of the member deletion feature. Valid values:
  /// - Enabled: The feature is enabled. You can call the DeleteAccount operation to delete members of the resource account type.
  /// - Disabled: The feature is disabled. You cannot delete members of the resource account type.
  final pulumi.Input<String>? memberDeletionStatus;
  /// ScpStatus
  final pulumi.Input<String>? status;

  /// Creates a new [ResourceDirectoryArgs].
  /// [memberAccountDisplayNameSyncStatus] The status of the Member Display Name Synchronization feature. Valid values:
  /// [memberDeletionStatus] The status of the member deletion feature. Valid values:
  /// [status] ScpStatus
  ResourceDirectoryArgs({
    this.memberAccountDisplayNameSyncStatus,
    this.memberDeletionStatus,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberAccountDisplayNameSyncStatus': ?memberAccountDisplayNameSyncStatus,
      'memberDeletionStatus': ?memberDeletionStatus,
      'status': ?status,
    };
  }

  factory ResourceDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return ResourceDirectoryArgs(
      memberAccountDisplayNameSyncStatus: (() { final guardedValue = map['memberAccountDisplayNameSyncStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memberDeletionStatus: (() { final guardedValue = map['memberDeletionStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

