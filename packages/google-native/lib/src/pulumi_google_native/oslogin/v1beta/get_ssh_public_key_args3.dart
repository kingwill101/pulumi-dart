// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSshPublicKey.
class GetSshPublicKeyArgs3 {
  final Input<String> sshPublicKeyId;
  final Input<String> userId;

  GetSshPublicKeyArgs3({
    required this.sshPublicKeyId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sshPublicKeyId'] = sshPublicKeyId;
    map['userId'] = userId;
    return map;
  }

  factory GetSshPublicKeyArgs3.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyArgs3(
      sshPublicKeyId: Input.asInput<String>(map['sshPublicKeyId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
