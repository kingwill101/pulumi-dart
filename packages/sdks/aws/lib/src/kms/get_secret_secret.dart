// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretSecret {
  final pulumi.Input<Map<String, String>>? context;
  final pulumi.Input<List<String>>? grantTokens;
  final pulumi.Input<String> name;
  final pulumi.Input<String> payload;

  /// Creates a new [GetSecretSecret].
  /// [context] Optional.
  /// [grantTokens] Optional.
  /// [name] Required.
  /// [payload] Required.
  GetSecretSecret({
    this.context,
    this.grantTokens,
    required this.name,
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'grantTokens': ?grantTokens,
      'name': name,
      'payload': payload,
    };
  }

  factory GetSecretSecret.fromMap(Map<String, dynamic> map) {
    return GetSecretSecret(
      context: map['context'] == null ? null : ((map['context'] as Map).cast<String, String>()).input(),
      grantTokens: map['grantTokens'] == null ? null : ((map['grantTokens'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      payload: (map['payload'] as String).input(),
    );
  }
}

