// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_permission_permission.dart';

/// Input properties used for looking up and filtering UserPermission resources.
class UserPermissionState {
  /// List of permissions. **Warning:** The list requires the full amount of permission information to be passed. Adding permissions means adding items to the list, and deleting them or inputting nothing means removing items. See `permissions` below.
  final pulumi.Input<List<UserPermissionPermission>>? permissions;
  /// The configuration of the Load Balancer. See the following `Block load_balancer`.
  final pulumi.Input<String>? subAccountUserId;

  /// Creates a new [UserPermissionState].
  /// [permissions] List of permissions. **Warning:** The list requires the full amount of permission information to be passed. Adding permissions means adding items to the list, and deleting them or inputting nothing means removing items. See `permissions` below.
  /// [subAccountUserId] The configuration of the Load Balancer. See the following `Block load_balancer`.
  UserPermissionState({
    pulumi.Output<List<UserPermissionPermission>>? permissions,
    pulumi.Output<String>? subAccountUserId,
  }) :
      permissions = pulumi.Input.asOptionalInput<List<UserPermissionPermission>>(permissions),
      subAccountUserId = pulumi.Input.asOptionalInput<String>(subAccountUserId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<UserPermissionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<UserPermissionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subAccountUserId': ?subAccountUserId,
    };
  }

  factory UserPermissionState.fromMap(Map<String, dynamic> map) {
    return UserPermissionState(
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<UserPermissionPermission>>(pulumi.Input.decodeList<UserPermissionPermission>(map['permissions'], (value) => UserPermissionPermission.fromMap((value as Map).cast<String, dynamic>()))),
      subAccountUserId: map['subAccountUserId'] == null ? null : pulumi.Output.create<String>(map['subAccountUserId'] as String),
    );
  }
}

