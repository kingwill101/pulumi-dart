// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRandomPassword.
class GetRandomPasswordResult {
  final String? excludeCharacters;
  final bool? excludeLowercase;
  final bool? excludeNumbers;
  final bool? excludePunctuation;
  final bool? excludeUppercase;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeSpace;
  final int? passwordLength;

  /// Random password.
  final String randomPassword;
  final String region;
  final bool? requireEachIncludedType;

  GetRandomPasswordResult({
    this.excludeCharacters,
    this.excludeLowercase,
    this.excludeNumbers,
    this.excludePunctuation,
    this.excludeUppercase,
    required this.id,
    this.includeSpace,
    this.passwordLength,
    required this.randomPassword,
    required this.region,
    this.requireEachIncludedType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeCharactersValue = excludeCharacters;
    if (excludeCharactersValue != null) {
      map['excludeCharacters'] = excludeCharactersValue;
    }
    final excludeLowercaseValue = excludeLowercase;
    if (excludeLowercaseValue != null) {
      map['excludeLowercase'] = excludeLowercaseValue;
    }
    final excludeNumbersValue = excludeNumbers;
    if (excludeNumbersValue != null) {
      map['excludeNumbers'] = excludeNumbersValue;
    }
    final excludePunctuationValue = excludePunctuation;
    if (excludePunctuationValue != null) {
      map['excludePunctuation'] = excludePunctuationValue;
    }
    final excludeUppercaseValue = excludeUppercase;
    if (excludeUppercaseValue != null) {
      map['excludeUppercase'] = excludeUppercaseValue;
    }
    map['id'] = id;
    final includeSpaceValue = includeSpace;
    if (includeSpaceValue != null) {
      map['includeSpace'] = includeSpaceValue;
    }
    final passwordLengthValue = passwordLength;
    if (passwordLengthValue != null) {
      map['passwordLength'] = passwordLengthValue;
    }
    map['randomPassword'] = randomPassword;
    map['region'] = region;
    final requireEachIncludedTypeValue = requireEachIncludedType;
    if (requireEachIncludedTypeValue != null) {
      map['requireEachIncludedType'] = requireEachIncludedTypeValue;
    }
    return map;
  }

  factory GetRandomPasswordResult.fromMap(Map<String, dynamic> map) {
    return GetRandomPasswordResult(
      excludeCharacters: map['excludeCharacters'] == null
          ? null
          : map['excludeCharacters'] as String,
      excludeLowercase: map['excludeLowercase'] == null
          ? null
          : map['excludeLowercase'] as bool,
      excludeNumbers:
          map['excludeNumbers'] == null ? null : map['excludeNumbers'] as bool,
      excludePunctuation: map['excludePunctuation'] == null
          ? null
          : map['excludePunctuation'] as bool,
      excludeUppercase: map['excludeUppercase'] == null
          ? null
          : map['excludeUppercase'] as bool,
      id: map['id'] as String,
      includeSpace:
          map['includeSpace'] == null ? null : map['includeSpace'] as bool,
      passwordLength:
          map['passwordLength'] == null ? null : map['passwordLength'] as int,
      randomPassword: map['randomPassword'] as String,
      region: map['region'] as String,
      requireEachIncludedType: map['requireEachIncludedType'] == null
          ? null
          : map['requireEachIncludedType'] as bool,
    );
  }
}
