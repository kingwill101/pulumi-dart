// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Result data returned by listJobEnvSecrets.
class ListJobEnvSecretsResult {
  /// Collection of resources.
  final List<SecretResponse>? value;

  /// Creates a new [ListJobEnvSecretsResult].
  /// [value] Collection of resources.
  const ListJobEnvSecretsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SecretResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListJobEnvSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListJobEnvSecretsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecretResponse>(guardedValue, (value) => SecretResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
