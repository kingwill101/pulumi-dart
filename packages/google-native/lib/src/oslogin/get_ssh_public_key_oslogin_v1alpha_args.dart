// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oslogin_v1alpha_get_ssh_public_key_oslogin_v1alpha_args_doc}
/// Arguments for getSshPublicKey.
/// {@endtemplate}
/// {@macro pulumi_oslogin_v1alpha_get_ssh_public_key_oslogin_v1alpha_args_doc}
class GetSshPublicKeyOsloginV1alphaArgs {
  final pulumi.Input<String> sshPublicKeyId;
  final pulumi.Input<String> userId;

  /// Creates a new [GetSshPublicKeyOsloginV1alphaArgs].
  /// [sshPublicKeyId] Required.
  /// [userId] Required.
  GetSshPublicKeyOsloginV1alphaArgs({
    required String sshPublicKeyId,
    required String userId,
  })  : sshPublicKeyId = pulumi.Input.asInput<String>(sshPublicKeyId),
        userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sshPublicKeyId'] = sshPublicKeyId;
    map['userId'] = userId;
    return map;
  }

  factory GetSshPublicKeyOsloginV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyOsloginV1alphaArgs(
      sshPublicKeyId: map['sshPublicKeyId'] as String,
      userId: map['userId'] as String,
    );
  }
}
