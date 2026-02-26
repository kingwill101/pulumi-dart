// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Keystore.
class KeystoreArgs {
  final Input<String> environmentId;

  /// Resource ID for this keystore. Values must match the regular expression `[\w[:space:].-]{1,255}`.
  final Input<String>? name;
  final Input<String> organizationId;

  KeystoreArgs({
    required this.environmentId,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory KeystoreArgs.fromMap(Map<String, dynamic> map) {
    return KeystoreArgs(
      environmentId: Input.asInput<String>(map['environmentId']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
