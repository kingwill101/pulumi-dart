// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserName {
  /// The family name of the user.
  final pulumi.Input<String> familyName;
  /// The name that is typically displayed when the name is shown for display.
  final pulumi.Input<String>? formatted;
  /// The given name of the user.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> givenName;
  /// The honorific prefix of the user.
  final pulumi.Input<String>? honorificPrefix;
  /// The honorific suffix of the user.
  final pulumi.Input<String>? honorificSuffix;
  /// The middle name of the user.
  final pulumi.Input<String>? middleName;

  /// Creates a new [UserName].
  /// [familyName] The family name of the user.
  /// [formatted] The name that is typically displayed when the name is shown for display.
  /// [givenName] The given name of the user.
  /// [honorificPrefix] The honorific prefix of the user.
  /// [honorificSuffix] The honorific suffix of the user.
  /// [middleName] The middle name of the user.
  UserName({
    required this.familyName,
    this.formatted,
    required this.givenName,
    this.honorificPrefix,
    this.honorificSuffix,
    this.middleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familyName': familyName,
      'formatted': ?formatted,
      'givenName': givenName,
      'honorificPrefix': ?honorificPrefix,
      'honorificSuffix': ?honorificSuffix,
      'middleName': ?middleName,
    };
  }

  factory UserName.fromMap(Map<String, dynamic> map) {
    return UserName(
      familyName: (map['familyName'] as String).input(),
      formatted: map['formatted'] == null ? null : (map['formatted'] as String).input(),
      givenName: (map['givenName'] as String).input(),
      honorificPrefix: map['honorificPrefix'] == null ? null : (map['honorificPrefix'] as String).input(),
      honorificSuffix: map['honorificSuffix'] == null ? null : (map['honorificSuffix'] as String).input(),
      middleName: map['middleName'] == null ? null : (map['middleName'] as String).input(),
    );
  }
}

