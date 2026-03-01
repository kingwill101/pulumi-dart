// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_ciphertext_ciphertext_args_doc}
/// The set of arguments for Ciphertext.
/// {@endtemplate}
/// {@macro pulumi_kms_ciphertext_ciphertext_args_doc}
class CiphertextArgs {
  /// An optional mapping that makes up the encryption context.
  final pulumi.Input<Map<String, String>>? context;
  /// Globally unique key ID for the customer master key.
  final pulumi.Input<String> keyId;
  /// Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  final pulumi.Input<String>? plaintext;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Data to be encrypted. Note that this may show up in logs. It will not be stored in the state file.
  final pulumi.Input<String>? plaintextWo;
  /// Used together with `plaintext_wo` to trigger a replacement. Modify this value when a replacement is required.
  final pulumi.Input<String>? plaintextWoVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CiphertextArgs].
  /// [context] An optional mapping that makes up the encryption context.
  /// [keyId] Globally unique key ID for the customer master key.
  /// [plaintext] Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  /// [plaintextWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [plaintextWoVersion] Used together with `plaintext_wo` to trigger a replacement. Modify this value when a replacement is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  CiphertextArgs({
    pulumi.Output<Map<String, String>>? context,
    required pulumi.Output<String> keyId,
    pulumi.Output<String>? plaintext,
    pulumi.Output<String>? plaintextWo,
    pulumi.Output<String>? plaintextWoVersion,
    pulumi.Output<String>? region,
  }) :
      context = pulumi.Input.asOptionalInput<Map<String, String>>(context),
      keyId = pulumi.Input.asInput<String>(keyId),
      plaintext = pulumi.Input.asOptionalInput<String>(plaintext),
      plaintextWo = pulumi.Input.asOptionalInput<String>(plaintextWo),
      plaintextWoVersion = pulumi.Input.asOptionalInput<String>(plaintextWoVersion),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'keyId': keyId,
      'plaintext': ?plaintext,
      'plaintextWo': ?plaintextWo,
      'plaintextWoVersion': ?plaintextWoVersion,
      'region': ?region,
    };
  }

  factory CiphertextArgs.fromMap(Map<String, dynamic> map) {
    return CiphertextArgs(
      context: map['context'] == null ? null : pulumi.Output.create<Map<String, String>>((map['context'] as Map).cast<String, String>()),
      keyId: pulumi.Output.create<String>(map['keyId'] as String),
      plaintext: map['plaintext'] == null ? null : pulumi.Output.create<String>(map['plaintext'] as String),
      plaintextWo: map['plaintextWo'] == null ? null : pulumi.Output.create<String>(map['plaintextWo'] as String),
      plaintextWoVersion: map['plaintextWoVersion'] == null ? null : pulumi.Output.create<String>(map['plaintextWoVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

