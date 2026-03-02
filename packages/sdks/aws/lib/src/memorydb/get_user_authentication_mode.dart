// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserAuthenticationMode {
  /// Number of passwords belonging to the user if `type` is set to `password`.
  final pulumi.Input<int> passwordCount;
  /// Type of authentication configured.
  final pulumi.Input<String> type;

  /// Creates a new [GetUserAuthenticationMode].
  /// [passwordCount] Number of passwords belonging to the user if `type` is set to `password`.
  /// [type] Type of authentication configured.
  GetUserAuthenticationMode({
    required this.passwordCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordCount': passwordCount,
      'type': type,
    };
  }

  factory GetUserAuthenticationMode.fromMap(Map<String, dynamic> map) {
    return GetUserAuthenticationMode(
      passwordCount: (map['passwordCount'] as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

