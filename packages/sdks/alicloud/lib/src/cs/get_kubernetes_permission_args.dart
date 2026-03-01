// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_kubernetes_permission_get_kubernetes_permission_args_doc}
/// Arguments for getKubernetesPermission.
/// {@endtemplate}
/// {@macro pulumi_cs_get_kubernetes_permission_get_kubernetes_permission_args_doc}
class GetKubernetesPermissionArgs {
  /// The ID of the RAM user. If you want to query the permissions of a RAM role, specify the ID of the RAM role.
  final pulumi.Input<String> uid;

  /// Creates a new [GetKubernetesPermissionArgs].
  /// [uid] The ID of the RAM user. If you want to query the permissions of a RAM role, specify the ID of the RAM role.
  GetKubernetesPermissionArgs({
    required pulumi.Output<String> uid,
  }) :
      uid = pulumi.Input.asInput<String>(uid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
    };
  }

  factory GetKubernetesPermissionArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesPermissionArgs(
      uid: pulumi.Output.create<String>(map['uid'] as String),
    );
  }
}

