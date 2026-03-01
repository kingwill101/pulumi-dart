// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_sync_group_sync_group_args_doc}
/// The set of arguments for SyncGroup.
/// {@endtemplate}
/// {@macro pulumi_storage_sync_group_sync_group_args_doc}
class SyncGroupArgs {
  /// The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created.
  final pulumi.Input<String>? name;
  /// The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created.
  final pulumi.Input<String> storageSyncId;

  /// Creates a new [SyncGroupArgs].
  /// [name] The name which should be used for this Storage Sync Group. Changing this forces a new Storage Sync Group to be created.
  /// [storageSyncId] The resource ID of the Storage Sync where this Storage Sync Group is. Changing this forces a new Storage Sync Group to be created.
  SyncGroupArgs({
    String? name,
    required String storageSyncId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      storageSyncId = pulumi.Input.asInput<String>(storageSyncId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'storageSyncId': storageSyncId,
    };
  }

  factory SyncGroupArgs.fromMap(Map<String, dynamic> map) {
    return SyncGroupArgs(
      name: map['name'] == null ? null : map['name'] as String,
      storageSyncId: map['storageSyncId'] as String,
    );
  }
}

