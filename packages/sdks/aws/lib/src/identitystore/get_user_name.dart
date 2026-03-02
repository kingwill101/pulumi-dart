// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserName {
  /// The family name of the user.
  final pulumi.Input<String> familyName;
  /// The name that is typically displayed when the name is shown for display.
  final pulumi.Input<String> formatted;
  /// The given name of the user.
  final pulumi.Input<String> givenName;
  /// The honorific prefix of the user.
  final pulumi.Input<String> honorificPrefix;
  /// The honorific suffix of the user.
  final pulumi.Input<String> honorificSuffix;
  /// The middle name of the user.
  final pulumi.Input<String> middleName;

  /// Creates a new [GetUserName].
  /// [familyName] The family name of the user.
  /// [formatted] The name that is typically displayed when the name is shown for display.
  /// [givenName] The given name of the user.
  /// [honorificPrefix] The honorific prefix of the user.
  /// [honorificSuffix] The honorific suffix of the user.
  /// [middleName] The middle name of the user.
  GetUserName({
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

  factory GetUserName.fromMap(Map<String, dynamic> map) {
    return GetUserName(
      familyName: (map['familyName'] as String).input(),
      formatted: (map['formatted'] as String).input(),
      givenName: (map['givenName'] as String).input(),
      honorificPrefix: (map['honorificPrefix'] as String).input(),
      honorificSuffix: (map['honorificSuffix'] as String).input(),
      middleName: (map['middleName'] as String).input(),
    );
  }
}

