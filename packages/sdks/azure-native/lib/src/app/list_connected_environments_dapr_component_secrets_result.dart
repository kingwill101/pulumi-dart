// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_secret_response.dart';

/// Result data returned by listConnectedEnvironmentsDaprComponentSecrets.
class ListConnectedEnvironmentsDaprComponentSecretsResult {
  /// Collection of secrets used by a Dapr component
  final List<DaprSecretResponse>? value;

  /// Creates a new [ListConnectedEnvironmentsDaprComponentSecretsResult].
  /// [value] Collection of secrets used by a Dapr component
  const ListConnectedEnvironmentsDaprComponentSecretsResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DaprSecretResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListConnectedEnvironmentsDaprComponentSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListConnectedEnvironmentsDaprComponentSecretsResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DaprSecretResponse>(guardedValue, (value) => DaprSecretResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
