// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GenerateSecretString
class GenerateSecretString {
  /// A string of the characters that you don't want in the password.
  final pulumi.Input<String>? excludeCharacters;
  /// Specifies whether to exclude lowercase letters from the password. If you don't include this switch, the password can contain lowercase letters.
  final pulumi.Input<bool>? excludeLowercase;
  /// Specifies whether to exclude numbers from the password. If you don't include this switch, the password can contain numbers.
  final pulumi.Input<bool>? excludeNumbers;
  /// Specifies whether to exclude the following punctuation characters from the password: ``! ' # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~``. If you don't include this switch, the password can contain punctuation.
  final pulumi.Input<bool>? excludePunctuation;
  /// Specifies whether to exclude uppercase letters from the password. If you don't include this switch, the password can contain uppercase letters.
  final pulumi.Input<bool>? excludeUppercase;
  /// The JSON key name for the key/value pair, where the value is the generated password. This pair is added to the JSON structure specified by the ``SecretStringTemplate`` parameter. If you specify this parameter, then you must also specify ``SecretStringTemplate``.
  final pulumi.Input<String>? generateStringKey;
  /// Specifies whether to include the space character. If you include this switch, the password can contain space characters.
  final pulumi.Input<bool>? includeSpace;
  /// The length of the password. If you don't include this parameter, the default length is 32 characters.
  final pulumi.Input<int>? passwordLength;
  /// Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation. If you don't include this switch, the password contains at least one of every character type.
  final pulumi.Input<bool>? requireEachIncludedType;
  /// A template that the generated string must match. When you make a change to this property, a new secret version is created.
  final pulumi.Input<String>? secretStringTemplate;

  /// Creates a new [GenerateSecretString].
  /// [excludeCharacters] A string of the characters that you don't want in the password.
  /// [excludeLowercase] Specifies whether to exclude lowercase letters from the password. If you don't include this switch, the password can contain lowercase letters.
  /// [excludeNumbers] Specifies whether to exclude numbers from the password. If you don't include this switch, the password can contain numbers.
  /// [excludePunctuation] Specifies whether to exclude the following punctuation characters from the password: ``! ' # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~``. If you don't include this switch, the password can contain punctuation.
  /// [excludeUppercase] Specifies whether to exclude uppercase letters from the password. If you don't include this switch, the password can contain uppercase letters.
  /// [generateStringKey] The JSON key name for the key/value pair, where the value is the generated password. This pair is added to the JSON structure specified by the ``SecretStringTemplate`` parameter. If you specify this parameter, then you must also specify ``SecretStringTemplate``.
  /// [includeSpace] Specifies whether to include the space character. If you include this switch, the password can contain space characters.
  /// [passwordLength] The length of the password. If you don't include this parameter, the default length is 32 characters.
  /// [requireEachIncludedType] Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation. If you don't include this switch, the password contains at least one of every character type.
  /// [secretStringTemplate] A template that the generated string must match. When you make a change to this property, a new secret version is created.
  GenerateSecretString({
    this.excludeCharacters,
    this.excludeLowercase,
    this.excludeNumbers,
    this.excludePunctuation,
    this.excludeUppercase,
    this.generateStringKey,
    this.includeSpace,
    this.passwordLength,
    this.requireEachIncludedType,
    this.secretStringTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeCharacters': ?excludeCharacters,
      'excludeLowercase': ?excludeLowercase,
      'excludeNumbers': ?excludeNumbers,
      'excludePunctuation': ?excludePunctuation,
      'excludeUppercase': ?excludeUppercase,
      'generateStringKey': ?generateStringKey,
      'includeSpace': ?includeSpace,
      'passwordLength': ?passwordLength,
      'requireEachIncludedType': ?requireEachIncludedType,
      'secretStringTemplate': ?secretStringTemplate,
    };
  }

  factory GenerateSecretString.fromMap(Map<String, dynamic> map) {
    return GenerateSecretString(
      excludeCharacters: map['excludeCharacters'] == null ? null : (map['excludeCharacters']! as String).input(),
      excludeLowercase: map['excludeLowercase'] == null ? null : (map['excludeLowercase']! as bool).input(),
      excludeNumbers: map['excludeNumbers'] == null ? null : (map['excludeNumbers']! as bool).input(),
      excludePunctuation: map['excludePunctuation'] == null ? null : (map['excludePunctuation']! as bool).input(),
      excludeUppercase: map['excludeUppercase'] == null ? null : (map['excludeUppercase']! as bool).input(),
      generateStringKey: map['generateStringKey'] == null ? null : (map['generateStringKey']! as String).input(),
      includeSpace: map['includeSpace'] == null ? null : (map['includeSpace']! as bool).input(),
      passwordLength: map['passwordLength'] == null ? null : (map['passwordLength']! as int).input(),
      requireEachIncludedType: map['requireEachIncludedType'] == null ? null : (map['requireEachIncludedType']! as bool).input(),
      secretStringTemplate: map['secretStringTemplate'] == null ? null : (map['secretStringTemplate']! as String).input(),
    );
  }
}

