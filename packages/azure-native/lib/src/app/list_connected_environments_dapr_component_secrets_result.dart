// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_secret_response.dart';

/// Result data returned by listConnectedEnvironmentsDaprComponentSecrets.
class ListConnectedEnvironmentsDaprComponentSecretsResult {
  /// Collection of secrets used by a Dapr component
  final List<DaprSecretResponse> value;

  /// Creates a new [ListConnectedEnvironmentsDaprComponentSecretsResult].
  /// [value] Collection of secrets used by a Dapr component
  ListConnectedEnvironmentsDaprComponentSecretsResult({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.encodeList<DaprSecretResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListConnectedEnvironmentsDaprComponentSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListConnectedEnvironmentsDaprComponentSecretsResult(
      value: pulumi.Input.decodeList<DaprSecretResponse>(map['value'], (value) => DaprSecretResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

