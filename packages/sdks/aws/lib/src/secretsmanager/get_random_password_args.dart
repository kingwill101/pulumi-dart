// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_secretsmanager_get_random_password_get_random_password_args_doc}
/// Arguments for getRandomPassword.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_get_random_password_get_random_password_args_doc}
class GetRandomPasswordArgs {
  /// String of the characters that you don't want in the password.
  final pulumi.Input<String>? excludeCharacters;
  /// Specifies whether to exclude lowercase letters from the password.
  final pulumi.Input<bool>? excludeLowercase;
  /// Specifies whether to exclude numbers from the password.
  final pulumi.Input<bool>? excludeNumbers;
  /// Specifies whether to exclude the following punctuation characters from the password: ``! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~ .``
  final pulumi.Input<bool>? excludePunctuation;
  /// Specifies whether to exclude uppercase letters from the password.
  final pulumi.Input<bool>? excludeUppercase;
  /// Specifies whether to include the space character.
  final pulumi.Input<bool>? includeSpace;
  /// Length of the password.
  final pulumi.Input<int>? passwordLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation.
  final pulumi.Input<bool>? requireEachIncludedType;

  /// Creates a new [GetRandomPasswordArgs].
  /// [excludeCharacters] String of the characters that you don't want in the password.
  /// [excludeLowercase] Specifies whether to exclude lowercase letters from the password.
  /// [excludeNumbers] Specifies whether to exclude numbers from the password.
  /// [excludePunctuation] Specifies whether to exclude the following punctuation characters from the password: ``! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~ .``
  /// [excludeUppercase] Specifies whether to exclude uppercase letters from the password.
  /// [includeSpace] Specifies whether to include the space character.
  /// [passwordLength] Length of the password.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireEachIncludedType] Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation.
  GetRandomPasswordArgs({
    this.excludeCharacters,
    this.excludeLowercase,
    this.excludeNumbers,
    this.excludePunctuation,
    this.excludeUppercase,
    this.includeSpace,
    this.passwordLength,
    this.region,
    this.requireEachIncludedType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeCharacters': ?excludeCharacters,
      'excludeLowercase': ?excludeLowercase,
      'excludeNumbers': ?excludeNumbers,
      'excludePunctuation': ?excludePunctuation,
      'excludeUppercase': ?excludeUppercase,
      'includeSpace': ?includeSpace,
      'passwordLength': ?passwordLength,
      'region': ?region,
      'requireEachIncludedType': ?requireEachIncludedType,
    };
  }

  factory GetRandomPasswordArgs.fromMap(Map<String, dynamic> map) {
    return GetRandomPasswordArgs(
      excludeCharacters: map['excludeCharacters'] == null ? null : ((map['excludeCharacters'] as String).input()).input(),
      excludeLowercase: map['excludeLowercase'] == null ? null : ((map['excludeLowercase'] as bool).input()).input(),
      excludeNumbers: map['excludeNumbers'] == null ? null : ((map['excludeNumbers'] as bool).input()).input(),
      excludePunctuation: map['excludePunctuation'] == null ? null : ((map['excludePunctuation'] as bool).input()).input(),
      excludeUppercase: map['excludeUppercase'] == null ? null : ((map['excludeUppercase'] as bool).input()).input(),
      includeSpace: map['includeSpace'] == null ? null : ((map['includeSpace'] as bool).input()).input(),
      passwordLength: map['passwordLength'] == null ? null : ((map['passwordLength'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      requireEachIncludedType: map['requireEachIncludedType'] == null ? null : ((map['requireEachIncludedType'] as bool).input()).input(),
    );
  }
}

