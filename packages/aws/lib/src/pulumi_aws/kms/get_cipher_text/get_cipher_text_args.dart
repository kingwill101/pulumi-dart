// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCipherText.
class GetCipherTextArgs {
  /// An optional mapping that makes up the encryption context.
  final Input<Map<String, String>>? context;

  /// Globally unique key ID for the customer master key.
  final Input<String> keyId;

  /// Data to be encrypted. Note that this may show up in logs, and it will be stored in the state file.
  final Input<String> plaintext;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetCipherTextArgs({
    this.context,
    required this.keyId,
    required this.plaintext,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue;
    }
    map['keyId'] = keyId;
    map['plaintext'] = plaintext;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetCipherTextArgs.fromMap(Map<String, dynamic> map) {
    return GetCipherTextArgs(
      context: Input.asOptionalInput<Map<String, String>>(map['context']),
      keyId: Input.asInput<String>(map['keyId']),
      plaintext: Input.asInput<String>(map['plaintext']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
