// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_lock_lock_args_doc}
/// The set of arguments for Lock.
/// {@endtemplate}
/// {@macro pulumi_index_lock_lock_args_doc}
class LockArgs {
  /// The ID of the entity to lock.
  final pulumi.Input<int> entityId;
  /// The type of the entity to lock. Currently only `linode` is supported. Note: Linodes that are part of an LKE cluster cannot be locked.
  final pulumi.Input<String> entityType;
  /// The type of lock to apply. Only one lock type can exist per resource at a time. Valid values are:
  final pulumi.Input<String> lockType;

  /// Creates a new [LockArgs].
  /// [entityId] The ID of the entity to lock.
  /// [entityType] The type of the entity to lock. Currently only `linode` is supported. Note: Linodes that are part of an LKE cluster cannot be locked.
  /// [lockType] The type of lock to apply. Only one lock type can exist per resource at a time. Valid values are:
  LockArgs({
    required int entityId,
    required String entityType,
    required String lockType,
  }) :
      entityId = pulumi.Input.asInput<int>(entityId),
      entityType = pulumi.Input.asInput<String>(entityType),
      lockType = pulumi.Input.asInput<String>(lockType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'entityType': entityType,
      'lockType': lockType,
    };
  }

  factory LockArgs.fromMap(Map<String, dynamic> map) {
    return LockArgs(
      entityId: map['entityId'] as int,
      entityType: map['entityType'] as String,
      lockType: map['lockType'] as String,
    );
  }
}

