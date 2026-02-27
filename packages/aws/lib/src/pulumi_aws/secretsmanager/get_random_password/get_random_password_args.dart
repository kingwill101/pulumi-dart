// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRandomPassword.
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
    final includeSpaceValue = includeSpace;
    if (includeSpaceValue != null) {
      map['includeSpace'] = includeSpaceValue;
    }
    final passwordLengthValue = passwordLength;
    if (passwordLengthValue != null) {
      map['passwordLength'] = passwordLengthValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requireEachIncludedTypeValue = requireEachIncludedType;
    if (requireEachIncludedTypeValue != null) {
      map['requireEachIncludedType'] = requireEachIncludedTypeValue;
    }
    return map;
  }

  factory GetRandomPasswordArgs.fromMap(Map<String, dynamic> map) {
    return GetRandomPasswordArgs(
      excludeCharacters:
          pulumi.Input.asOptionalInput<String>(map['excludeCharacters']),
      excludeLowercase:
          pulumi.Input.asOptionalInput<bool>(map['excludeLowercase']),
      excludeNumbers: pulumi.Input.asOptionalInput<bool>(map['excludeNumbers']),
      excludePunctuation:
          pulumi.Input.asOptionalInput<bool>(map['excludePunctuation']),
      excludeUppercase:
          pulumi.Input.asOptionalInput<bool>(map['excludeUppercase']),
      includeSpace: pulumi.Input.asOptionalInput<bool>(map['includeSpace']),
      passwordLength: pulumi.Input.asOptionalInput<int>(map['passwordLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requireEachIncludedType:
          pulumi.Input.asOptionalInput<bool>(map['requireEachIncludedType']),
    );
  }
}
