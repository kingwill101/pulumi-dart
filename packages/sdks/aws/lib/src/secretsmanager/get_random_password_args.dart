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

  /// Specifies whether to exclude the following punctuation characters from the password: ``! " # $ % & ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ \ ] ^ _ ` { | } ~ .``
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
  /// [excludePunctuation] Specifies whether to exclude the following punctuation characters from the password: ``! " # $ % & ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ \ ] ^ _ ` { | } ~ .``
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
      excludeCharacters: (() {
        final guardedValue = map['excludeCharacters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeLowercase: (() {
        final guardedValue = map['excludeLowercase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      excludeNumbers: (() {
        final guardedValue = map['excludeNumbers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      excludePunctuation: (() {
        final guardedValue = map['excludePunctuation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      excludeUppercase: (() {
        final guardedValue = map['excludeUppercase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeSpace: (() {
        final guardedValue = map['includeSpace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      passwordLength: (() {
        final guardedValue = map['passwordLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requireEachIncludedType: (() {
        final guardedValue = map['requireEachIncludedType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
