// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccessKeys.
class GetAccessKeysArgs {
  /// Name of the IAM user associated with the access keys.
  final Input<String> user;

  GetAccessKeysArgs({
    required this.user,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['user'] = user;
    return map;
  }

  factory GetAccessKeysArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessKeysArgs(
      user: Input.asInput<String>(map['user']),
    );
  }
}
