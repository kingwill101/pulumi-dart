// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSshPublicKey.
class GetSshPublicKeyArgs {
  final pulumi.Input<String> sshPublicKeyId;
  final pulumi.Input<String> userId;

  GetSshPublicKeyArgs({
    required this.sshPublicKeyId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sshPublicKeyId'] = sshPublicKeyId;
    map['userId'] = userId;
    return map;
  }

  factory GetSshPublicKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyArgs(
      sshPublicKeyId: pulumi.Input.asInput<String>(map['sshPublicKeyId']),
      userId: pulumi.Input.asInput<String>(map['userId']),
    );
  }
}
