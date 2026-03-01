// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_cipher_text_get_cipher_text_args_doc}
/// Arguments for getCipherText.
/// {@endtemplate}
/// {@macro pulumi_kms_get_cipher_text_get_cipher_text_args_doc}
class GetCipherTextArgs {
  /// An optional mapping that makes up the encryption context.
  final pulumi.Input<Map<String, String>>? context;
  /// Globally unique key ID for the customer master key.
  final pulumi.Input<String> keyId;
  /// Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  final pulumi.Input<String> plaintext;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCipherTextArgs].
  /// [context] An optional mapping that makes up the encryption context.
  /// [keyId] Globally unique key ID for the customer master key.
  /// [plaintext] Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCipherTextArgs({
    pulumi.Output<Map<String, String>>? context,
    required pulumi.Output<String> keyId,
    required pulumi.Output<String> plaintext,
    pulumi.Output<String>? region,
  }) :
      context = pulumi.Input.asOptionalInput<Map<String, String>>(context),
      keyId = pulumi.Input.asInput<String>(keyId),
      plaintext = pulumi.Input.asInput<String>(plaintext),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'keyId': keyId,
      'plaintext': plaintext,
      'region': ?region,
    };
  }

  factory GetCipherTextArgs.fromMap(Map<String, dynamic> map) {
    return GetCipherTextArgs(
      context: map['context'] == null ? null : pulumi.Output.create<Map<String, String>>((map['context'] as Map).cast<String, String>()),
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      plaintext: pulumi.Output.create<String>(map['plaintext'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

