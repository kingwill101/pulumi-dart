// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_permission_get_permission_args_doc}
/// Arguments for getPermission.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_permission_get_permission_args_doc}
class GetPermissionArgs {
  /// Setting the value to `On` to assigns a RAM role to Tair (Redis OSS-Compatible) And Memcache (KVStore). If has been enabled, return the result. Valid values: "On" or "Off". Default to "Off".
  final pulumi.Input<String>? enable;

  /// Creates a new [GetPermissionArgs].
  /// [enable] Setting the value to `On` to assigns a RAM role to Tair (Redis OSS-Compatible) And Memcache (KVStore). If has been enabled, return the result. Valid values: "On" or "Off". Default to "Off".
  GetPermissionArgs({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
    };
  }

  factory GetPermissionArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionArgs(
      enable: map['enable'] == null ? null : (map['enable'] as String).input(),
    );
  }
}

