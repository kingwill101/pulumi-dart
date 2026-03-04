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
  UserPermissionState({this.permissions, this.subAccountUserId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions':
          ?pulumi.Input.mapOptionalInputValue<
            List<UserPermissionPermission>,
            List<Map<String, dynamic>>
          >(
            permissions,
            (value) =>
                pulumi.Input.encodeList<
                  UserPermissionPermission,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'subAccountUserId': ?subAccountUserId,
    };
  }

  factory UserPermissionState.fromMap(Map<String, dynamic> map) {
    return UserPermissionState(
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UserPermissionPermission>(
            guardedValue,
            (value) => UserPermissionPermission.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      subAccountUserId: (() {
        final guardedValue = map['subAccountUserId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
