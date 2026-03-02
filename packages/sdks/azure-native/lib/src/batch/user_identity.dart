// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_user_specification.dart';

/// Specify either the userName or autoUser property, but not both.
class UserIdentity {
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final pulumi.Input<AutoUserSpecification>? autoUser;
  /// The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  final pulumi.Input<String>? userName;

  /// Creates a new [UserIdentity].
  /// [autoUser] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  /// [userName] The userName and autoUser properties are mutually exclusive; you must specify one but not both.
  UserIdentity({
    this.autoUser,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUser': ?pulumi.Input.mapOptionalInputValue<AutoUserSpecification, Map<String, dynamic>>(autoUser, (value) => value.toMap()),
      'userName': ?userName,
    };
  }

  factory UserIdentity.fromMap(Map<String, dynamic> map) {
    return UserIdentity(
      autoUser: map['autoUser'] == null ? null : (AutoUserSpecification.fromMap((map['autoUser']! as Map).cast<String, dynamic>())).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

