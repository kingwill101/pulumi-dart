// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUserName {
  /// Family name of the user.
  final pulumi.Input<String> familyName;
  /// Name that is typically displayed when the name is shown for display.
  final pulumi.Input<String> formatted;
  /// Given name of the user.
  final pulumi.Input<String> givenName;
  /// Honorific prefix of the user.
  final pulumi.Input<String> honorificPrefix;
  /// Honorific suffix of the user.
  final pulumi.Input<String> honorificSuffix;
  /// Middle name of the user.
  final pulumi.Input<String> middleName;

  /// Creates a new [GetUsersUserName].
  /// [familyName] Family name of the user.
  /// [formatted] Name that is typically displayed when the name is shown for display.
  /// [givenName] Given name of the user.
  /// [honorificPrefix] Honorific prefix of the user.
  /// [honorificSuffix] Honorific suffix of the user.
  /// [middleName] Middle name of the user.
  const GetUsersUserName({
    required this.familyName,
    required this.formatted,
    required this.givenName,
    required this.honorificPrefix,
    required this.honorificSuffix,
    required this.middleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familyName': familyName,
      'formatted': formatted,
      'givenName': givenName,
      'honorificPrefix': honorificPrefix,
      'honorificSuffix': honorificSuffix,
      'middleName': middleName,
    };
  }

  factory GetUsersUserName.fromMap(Map<String, dynamic> map) {
    return GetUsersUserName(
      familyName: pulumi.Input.fromValue(map['familyName'] as String),
      formatted: pulumi.Input.fromValue(map['formatted'] as String),
      givenName: pulumi.Input.fromValue(map['givenName'] as String),
      honorificPrefix: pulumi.Input.fromValue(map['honorificPrefix'] as String),
      honorificSuffix: pulumi.Input.fromValue(map['honorificSuffix'] as String),
      middleName: pulumi.Input.fromValue(map['middleName'] as String),
    );
  }
}
