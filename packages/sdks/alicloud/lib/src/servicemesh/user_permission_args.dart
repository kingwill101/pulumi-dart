// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_permission_permission.dart';

/// {@template pulumi_servicemesh_user_permission_user_permission_args_doc}
/// The set of arguments for UserPermission.
/// {@endtemplate}
/// {@macro pulumi_servicemesh_user_permission_user_permission_args_doc}
class UserPermissionArgs {
  /// List of permissions. **Warning:** The list requires the full amount of permission information to be passed. Adding permissions means adding items to the list, and deleting them or inputting nothing means removing items. See `permissions` below.
  final pulumi.Input<List<UserPermissionPermission>>? permissions;
  /// The configuration of the Load Balancer. See the following `Block load_balancer`.
  final pulumi.Input<String> subAccountUserId;

  /// Creates a new [UserPermissionArgs].
  /// [permissions] List of permissions. **Warning:** The list requires the full amount of permission information to be passed. Adding permissions means adding items to the list, and deleting them or inputting nothing means removing items. See `permissions` below.
  /// [subAccountUserId] The configuration of the Load Balancer. See the following `Block load_balancer`.
  UserPermissionArgs({
    pulumi.Output<List<UserPermissionPermission>>? permissions,
    required pulumi.Output<String> subAccountUserId,
  }) :
      permissions = pulumi.Input.asOptionalInput<List<UserPermissionPermission>>(permissions),
      subAccountUserId = pulumi.Input.asInput<String>(subAccountUserId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<UserPermissionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<UserPermissionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subAccountUserId': subAccountUserId,
    };
  }

  factory UserPermissionArgs.fromMap(Map<String, dynamic> map) {
    return UserPermissionArgs(
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<UserPermissionPermission>>(pulumi.Input.decodeList<UserPermissionPermission>(map['permissions'], (value) => UserPermissionPermission.fromMap((value as Map).cast<String, dynamic>()))),
      subAccountUserId: pulumi.Output.create<String>(map['subAccountUserId'] as String),
    );
  }
}

