// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Ciphertext.
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

  CiphertextArgs({
    this.context,
    required this.keyId,
    this.plaintext,
    this.plaintextWo,
    this.plaintextWoVersion,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    map['keyId'] = keyId;
    final plaintextValue = plaintext;
    if (plaintextValue != null) {
      map['plaintext'] = plaintextValue;
    }
    final plaintextWoValue = plaintextWo;
    if (plaintextWoValue != null) {
      map['plaintextWo'] = plaintextWoValue;
    }
    final plaintextWoVersionValue = plaintextWoVersion;
    if (plaintextWoVersionValue != null) {
      map['plaintextWoVersion'] = plaintextWoVersionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CiphertextArgs.fromMap(Map<String, dynamic> map) {
    return CiphertextArgs(
      context:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['context']),
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      plaintext: pulumi.Input.asOptionalInput<String>(map['plaintext']),
      plaintextWo: pulumi.Input.asOptionalInput<String>(map['plaintextWo']),
      plaintextWoVersion:
          pulumi.Input.asOptionalInput<String>(map['plaintextWoVersion']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
