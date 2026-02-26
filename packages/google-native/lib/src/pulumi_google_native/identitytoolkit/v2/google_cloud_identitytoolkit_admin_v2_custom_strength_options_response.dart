// ignore_for_file: unused_element, unnecessary_cast

/// Custom strength options to enforce on user passwords.
class GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse {
  /// The password must contain a lower case character.
  final bool containsLowercaseCharacter;

  /// The password must contain a non alpha numeric character.
  final bool containsNonAlphanumericCharacter;

  /// The password must contain a number.
  final bool containsNumericCharacter;

  /// The password must contain an upper case character.
  final bool containsUppercaseCharacter;

  /// Maximum password length. No default max length
  final int maxPasswordLength;

  /// Minimum password length. Range from 6 to 30
  final int minPasswordLength;

  GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse({
    required this.containsLowercaseCharacter,
    required this.containsNonAlphanumericCharacter,
    required this.containsNumericCharacter,
    required this.containsUppercaseCharacter,
    required this.maxPasswordLength,
    required this.minPasswordLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containsLowercaseCharacter'] = containsLowercaseCharacter;
    map['containsNonAlphanumericCharacter'] = containsNonAlphanumericCharacter;
    map['containsNumericCharacter'] = containsNumericCharacter;
    map['containsUppercaseCharacter'] = containsUppercaseCharacter;
    map['maxPasswordLength'] = maxPasswordLength;
    map['minPasswordLength'] = minPasswordLength;
    return map;
  }

  factory GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIdentitytoolkitAdminV2CustomStrengthOptionsResponse(
      containsLowercaseCharacter: map['containsLowercaseCharacter'] as bool,
      containsNonAlphanumericCharacter:
          map['containsNonAlphanumericCharacter'] as bool,
      containsNumericCharacter: map['containsNumericCharacter'] as bool,
      containsUppercaseCharacter: map['containsUppercaseCharacter'] as bool,
      maxPasswordLength: map['maxPasswordLength'] as int,
      minPasswordLength: map['minPasswordLength'] as int,
    );
  }
}
