// ignore_for_file: unused_element, unnecessary_cast


class GetUsersUserName {
  /// Family name of the user.
  final String familyName;
  /// Name that is typically displayed when the name is shown for display.
  final String formatted;
  /// Given name of the user.
  final String givenName;
  /// Honorific prefix of the user.
  final String honorificPrefix;
  /// Honorific suffix of the user.
  final String honorificSuffix;
  /// Middle name of the user.
  final String middleName;

  /// Creates a new [GetUsersUserName].
  /// [familyName] Family name of the user.
  /// [formatted] Name that is typically displayed when the name is shown for display.
  /// [givenName] Given name of the user.
  /// [honorificPrefix] Honorific prefix of the user.
  /// [honorificSuffix] Honorific suffix of the user.
  /// [middleName] Middle name of the user.
  GetUsersUserName({
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
      familyName: map['familyName'] as String,
      formatted: map['formatted'] as String,
      givenName: map['givenName'] as String,
      honorificPrefix: map['honorificPrefix'] as String,
      honorificSuffix: map['honorificSuffix'] as String,
      middleName: map['middleName'] as String,
    );
  }
}

