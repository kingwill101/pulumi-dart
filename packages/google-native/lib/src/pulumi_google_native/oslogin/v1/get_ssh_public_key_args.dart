// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSshPublicKey.
class GetSshPublicKeyArgs {
  final Input<String> sshPublicKeyId;
  final Input<String> userId;

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
      sshPublicKeyId: Input.asInput<String>(map['sshPublicKeyId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
