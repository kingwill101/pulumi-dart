// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Ciphertext.
class CiphertextArgs {
  /// An optional mapping that makes up the encryption context.
  final Input<Map<String, String>>? context;

  /// Globally unique key ID for the customer master key.
  final Input<String> keyId;

  /// Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  final Input<String>? plaintext;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Data to be encrypted. Note that this may show up in logs. It will not be stored in the state file.
  final Input<String>? plaintextWo;

  /// Used together with <span pulumi-lang-nodejs="`plaintextWo`" pulumi-lang-dotnet="`PlaintextWo`" pulumi-lang-go="`plaintextWo`" pulumi-lang-python="`plaintext_wo`" pulumi-lang-yaml="`plaintextWo`" pulumi-lang-java="`plaintextWo`">`plaintext_wo`</span> to trigger a replacement. Modify this value when a replacement is required.
  final Input<String>? plaintextWoVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      context: Input.asOptionalInput<Map<String, String>>(map['context']),
      keyId: Input.asInput<String>(map['keyId']),
      plaintext: Input.asOptionalInput<String>(map['plaintext']),
      plaintextWo: Input.asOptionalInput<String>(map['plaintextWo']),
      plaintextWoVersion:
          Input.asOptionalInput<String>(map['plaintextWoVersion']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
