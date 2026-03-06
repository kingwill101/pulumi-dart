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
  const GetSecretSecret({
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
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      grantTokens: (() { final guardedValue = map['grantTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}

