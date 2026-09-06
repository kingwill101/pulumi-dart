// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_result_response.dart';
import 'hybrid_connection_config_response.dart';

/// Result data returned by listConnectedClusterUserCredential.
class ListConnectedClusterUserCredentialResult {
  /// Contains the REP (rendezvous endpoint) and “Sender” access token.
  final HybridConnectionConfigResponse? hybridConnectionConfig;
  /// Base64-encoded Kubernetes configuration file.
  final List<CredentialResultResponse>? kubeconfigs;

  /// Creates a new [ListConnectedClusterUserCredentialResult].
  /// [hybridConnectionConfig] Contains the REP (rendezvous endpoint) and “Sender” access token.
  /// [kubeconfigs] Base64-encoded Kubernetes configuration file.
  const ListConnectedClusterUserCredentialResult({
    this.hybridConnectionConfig,
    this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionConfig': ?hybridConnectionConfig?.toMap(),
      'kubeconfigs': ?(() { final guardedValue = kubeconfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<CredentialResultResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListConnectedClusterUserCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListConnectedClusterUserCredentialResult(
      hybridConnectionConfig: (() { final guardedValue = map['hybridConnectionConfig']; if (guardedValue == null) return null; return HybridConnectionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kubeconfigs: (() { final guardedValue = map['kubeconfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CredentialResultResponse>(guardedValue, (value) => CredentialResultResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
