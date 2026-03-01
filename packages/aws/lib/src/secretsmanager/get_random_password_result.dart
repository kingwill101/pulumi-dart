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

  /// Creates a new [GetRandomPasswordResult].
  /// [excludeCharacters] Optional.
  /// [excludeLowercase] Optional.
  /// [excludeNumbers] Optional.
  /// [excludePunctuation] Optional.
  /// [excludeUppercase] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeSpace] Optional.
  /// [passwordLength] Optional.
  /// [randomPassword] Random password.
  /// [region] Required.
  /// [requireEachIncludedType] Optional.
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
    return <String, dynamic>{
      'excludeCharacters': ?excludeCharacters,
      'excludeLowercase': ?excludeLowercase,
      'excludeNumbers': ?excludeNumbers,
      'excludePunctuation': ?excludePunctuation,
      'excludeUppercase': ?excludeUppercase,
      'id': id,
      'includeSpace': ?includeSpace,
      'passwordLength': ?passwordLength,
      'randomPassword': randomPassword,
      'region': region,
      'requireEachIncludedType': ?requireEachIncludedType,
    };
  }

  factory GetRandomPasswordResult.fromMap(Map<String, dynamic> map) {
    return GetRandomPasswordResult(
      excludeCharacters: map['excludeCharacters'] == null
          ? null
          : map['excludeCharacters'] as String,
      excludeLowercase: map['excludeLowercase'] == null
          ? null
          : map['excludeLowercase'] as bool,
      excludeNumbers: map['excludeNumbers'] == null
          ? null
          : map['excludeNumbers'] as bool,
      excludePunctuation: map['excludePunctuation'] == null
          ? null
          : map['excludePunctuation'] as bool,
      excludeUppercase: map['excludeUppercase'] == null
          ? null
          : map['excludeUppercase'] as bool,
      id: map['id'] as String,
      includeSpace: map['includeSpace'] == null
          ? null
          : map['includeSpace'] as bool,
      passwordLength: map['passwordLength'] == null
          ? null
          : map['passwordLength'] as int,
      randomPassword: map['randomPassword'] as String,
      region: map['region'] as String,
      requireEachIncludedType: map['requireEachIncludedType'] == null
          ? null
          : map['requireEachIncludedType'] as bool,
    );
  }
}
