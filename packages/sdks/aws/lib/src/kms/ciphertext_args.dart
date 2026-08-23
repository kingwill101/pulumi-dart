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
  /// Used together with `plaintextWo` to trigger a replacement. Modify this value when a replacement is required.
  final pulumi.Input<String>? plaintextWoVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CiphertextArgs].
  /// [context] An optional mapping that makes up the encryption context.
  /// [keyId] Globally unique key ID for the customer master key.
  /// [plaintext] Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  /// [plaintextWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [plaintextWoVersion] Used together with `plaintextWo` to trigger a replacement. Modify this value when a replacement is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const CiphertextArgs({
    this.context,
    required this.keyId,
    this.plaintext,
    this.plaintextWo,
    this.plaintextWoVersion,
    this.region,
  });

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
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      plaintext: (() { final guardedValue = map['plaintext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plaintextWo: (() { final guardedValue = map['plaintextWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plaintextWoVersion: (() { final guardedValue = map['plaintextWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
