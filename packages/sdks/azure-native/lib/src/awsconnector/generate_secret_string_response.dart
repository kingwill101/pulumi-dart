// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GenerateSecretString
class GenerateSecretStringResponse {
  /// A string of the characters that you don't want in the password.
  final pulumi.Input<String>? excludeCharacters;
  /// Specifies whether to exclude lowercase letters from the password. If you don't include this switch, the password can contain lowercase letters.
  final pulumi.Input<bool>? excludeLowercase;
  /// Specifies whether to exclude numbers from the password. If you don't include this switch, the password can contain numbers.
  final pulumi.Input<bool>? excludeNumbers;
  /// Specifies whether to exclude the following punctuation characters from the password: ``! ' # $ % & ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ \ ] ^ _ ` { | } ~``. If you don't include this switch, the password can contain punctuation.
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

  /// Creates a new [GenerateSecretStringResponse].
  /// [excludeCharacters] A string of the characters that you don't want in the password.
  /// [excludeLowercase] Specifies whether to exclude lowercase letters from the password. If you don't include this switch, the password can contain lowercase letters.
  /// [excludeNumbers] Specifies whether to exclude numbers from the password. If you don't include this switch, the password can contain numbers.
  /// [excludePunctuation] Specifies whether to exclude the following punctuation characters from the password: ``! ' # $ % & ' ( ) * + , - . / : ; &lt; = &gt; ? @ [ \ ] ^ _ ` { | } ~``. If you don't include this switch, the password can contain punctuation.
  /// [excludeUppercase] Specifies whether to exclude uppercase letters from the password. If you don't include this switch, the password can contain uppercase letters.
  /// [generateStringKey] The JSON key name for the key/value pair, where the value is the generated password. This pair is added to the JSON structure specified by the ``SecretStringTemplate`` parameter. If you specify this parameter, then you must also specify ``SecretStringTemplate``.
  /// [includeSpace] Specifies whether to include the space character. If you include this switch, the password can contain space characters.
  /// [passwordLength] The length of the password. If you don't include this parameter, the default length is 32 characters.
  /// [requireEachIncludedType] Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation. If you don't include this switch, the password contains at least one of every character type.
  /// [secretStringTemplate] A template that the generated string must match. When you make a change to this property, a new secret version is created.
  const GenerateSecretStringResponse({
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

  factory GenerateSecretStringResponse.fromMap(Map<String, dynamic> map) {
    return GenerateSecretStringResponse(
      excludeCharacters: (() { final guardedValue = map['excludeCharacters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeLowercase: (() { final guardedValue = map['excludeLowercase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeNumbers: (() { final guardedValue = map['excludeNumbers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludePunctuation: (() { final guardedValue = map['excludePunctuation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeUppercase: (() { final guardedValue = map['excludeUppercase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      generateStringKey: (() { final guardedValue = map['generateStringKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeSpace: (() { final guardedValue = map['includeSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      passwordLength: (() { final guardedValue = map['passwordLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requireEachIncludedType: (() { final guardedValue = map['requireEachIncludedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretStringTemplate: (() { final guardedValue = map['secretStringTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

