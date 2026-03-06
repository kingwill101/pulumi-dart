// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User identity configuration.
class UserIdentity {
  /// Enum to determine identity framework.
  /// Expected value is 'UserIdentity'.
  final pulumi.Input<String> identityType;

  /// Creates a new [UserIdentity].
  /// [identityType] Enum to determine identity framework.
  const UserIdentity({
    required this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': identityType,
    };
  }

  factory UserIdentity.fromMap(Map<String, dynamic> map) {
    return UserIdentity(
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
    );
  }
}

