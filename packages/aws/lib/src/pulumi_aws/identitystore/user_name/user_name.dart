// ignore_for_file: unused_element, unnecessary_cast

class UserName {
  /// The family name of the user.
  final String familyName;

  /// The name that is typically displayed when the name is shown for display.
  final String? formatted;

  /// The given name of the user.
  ///
  /// The following arguments are optional:
  final String givenName;

  /// The honorific prefix of the user.
  final String? honorificPrefix;

  /// The honorific suffix of the user.
  final String? honorificSuffix;

  /// The middle name of the user.
  final String? middleName;

  UserName({
    required this.familyName,
    this.formatted,
    required this.givenName,
    this.honorificPrefix,
    this.honorificSuffix,
    this.middleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['familyName'] = familyName;
    final formattedValue = formatted;
    if (formattedValue != null) {
      map['formatted'] = formattedValue;
    }
    map['givenName'] = givenName;
    final honorificPrefixValue = honorificPrefix;
    if (honorificPrefixValue != null) {
      map['honorificPrefix'] = honorificPrefixValue;
    }
    final honorificSuffixValue = honorificSuffix;
    if (honorificSuffixValue != null) {
      map['honorificSuffix'] = honorificSuffixValue;
    }
    final middleNameValue = middleName;
    if (middleNameValue != null) {
      map['middleName'] = middleNameValue;
    }
    return map;
  }

  factory UserName.fromMap(Map<String, dynamic> map) {
    return UserName(
      familyName: map['familyName'] as String,
      formatted: map['formatted'] == null ? null : map['formatted'] as String,
      givenName: map['givenName'] as String,
      honorificPrefix: map['honorificPrefix'] == null
          ? null
          : map['honorificPrefix'] as String,
      honorificSuffix: map['honorificSuffix'] == null
          ? null
          : map['honorificSuffix'] as String,
      middleName:
          map['middleName'] == null ? null : map['middleName'] as String,
    );
  }
}
