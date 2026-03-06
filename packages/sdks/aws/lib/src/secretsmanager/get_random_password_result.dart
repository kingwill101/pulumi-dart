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
  const GetRandomPasswordResult({
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
      excludeCharacters: (() { final guardedValue = map['excludeCharacters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludeLowercase: (() { final guardedValue = map['excludeLowercase']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeNumbers: (() { final guardedValue = map['excludeNumbers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludePunctuation: (() { final guardedValue = map['excludePunctuation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      excludeUppercase: (() { final guardedValue = map['excludeUppercase']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      includeSpace: (() { final guardedValue = map['includeSpace']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      passwordLength: (() { final guardedValue = map['passwordLength']; if (guardedValue == null) return null; return guardedValue as int; })(),
      randomPassword: map['randomPassword'] as String,
      region: map['region'] as String,
      requireEachIncludedType: (() { final guardedValue = map['requireEachIncludedType']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

