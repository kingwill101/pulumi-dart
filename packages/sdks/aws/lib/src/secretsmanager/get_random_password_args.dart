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
    pulumi.Output<String>? excludeCharacters,
    pulumi.Output<bool>? excludeLowercase,
    pulumi.Output<bool>? excludeNumbers,
    pulumi.Output<bool>? excludePunctuation,
    pulumi.Output<bool>? excludeUppercase,
    pulumi.Output<bool>? includeSpace,
    pulumi.Output<int>? passwordLength,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? requireEachIncludedType,
  }) :
      excludeCharacters = pulumi.Input.asOptionalInput<String>(excludeCharacters),
      excludeLowercase = pulumi.Input.asOptionalInput<bool>(excludeLowercase),
      excludeNumbers = pulumi.Input.asOptionalInput<bool>(excludeNumbers),
      excludePunctuation = pulumi.Input.asOptionalInput<bool>(excludePunctuation),
      excludeUppercase = pulumi.Input.asOptionalInput<bool>(excludeUppercase),
      includeSpace = pulumi.Input.asOptionalInput<bool>(includeSpace),
      passwordLength = pulumi.Input.asOptionalInput<int>(passwordLength),
      region = pulumi.Input.asOptionalInput<String>(region),
      requireEachIncludedType = pulumi.Input.asOptionalInput<bool>(requireEachIncludedType);

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
      excludeCharacters: map['excludeCharacters'] == null ? null : pulumi.Output.create<String>(map['excludeCharacters'] as String),
      excludeLowercase: map['excludeLowercase'] == null ? null : pulumi.Output.create<bool>(map['excludeLowercase'] as bool),
      excludeNumbers: map['excludeNumbers'] == null ? null : pulumi.Output.create<bool>(map['excludeNumbers'] as bool),
      excludePunctuation: map['excludePunctuation'] == null ? null : pulumi.Output.create<bool>(map['excludePunctuation'] as bool),
      excludeUppercase: map['excludeUppercase'] == null ? null : pulumi.Output.create<bool>(map['excludeUppercase'] as bool),
      includeSpace: map['includeSpace'] == null ? null : pulumi.Output.create<bool>(map['includeSpace'] as bool),
      passwordLength: map['passwordLength'] == null ? null : pulumi.Output.create<int>(map['passwordLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requireEachIncludedType: map['requireEachIncludedType'] == null ? null : pulumi.Output.create<bool>(map['requireEachIncludedType'] as bool),
    );
  }
}

