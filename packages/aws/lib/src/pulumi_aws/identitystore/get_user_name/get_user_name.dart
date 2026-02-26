// ignore_for_file: unused_element, unnecessary_cast

class GetUserName {
  /// The family name of the user.
  final String familyName;

  /// The name that is typically displayed when the name is shown for display.
  final String formatted;

  /// The given name of the user.
  final String givenName;

  /// The honorific prefix of the user.
  final String honorificPrefix;

  /// The honorific suffix of the user.
  final String honorificSuffix;

  /// The middle name of the user.
  final String middleName;

  GetUserName({
    required this.familyName,
    required this.formatted,
    required this.givenName,
    required this.honorificPrefix,
    required this.honorificSuffix,
    required this.middleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['familyName'] = familyName;
    map['formatted'] = formatted;
    map['givenName'] = givenName;
    map['honorificPrefix'] = honorificPrefix;
    map['honorificSuffix'] = honorificSuffix;
    map['middleName'] = middleName;
    return map;
  }

  factory GetUserName.fromMap(Map<String, dynamic> map) {
    return GetUserName(
      familyName: map['familyName'] as String,
      formatted: map['formatted'] as String,
      givenName: map['givenName'] as String,
      honorificPrefix: map['honorificPrefix'] as String,
      honorificSuffix: map['honorificSuffix'] as String,
      middleName: map['middleName'] as String,
    );
  }
}
