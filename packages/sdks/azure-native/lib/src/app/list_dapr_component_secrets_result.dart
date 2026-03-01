// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_secret_response.dart';

/// Result data returned by listDaprComponentSecrets.
class ListDaprComponentSecretsResult {
  /// Collection of secrets used by a Dapr component
  final List<DaprSecretResponse> value;

  /// Creates a new [ListDaprComponentSecretsResult].
  /// [value] Collection of secrets used by a Dapr component
  ListDaprComponentSecretsResult({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.encodeList<DaprSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListDaprComponentSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListDaprComponentSecretsResult(
      value: pulumi.Input.decodeList<DaprSecretResponse>(map['value'], (value) => DaprSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

