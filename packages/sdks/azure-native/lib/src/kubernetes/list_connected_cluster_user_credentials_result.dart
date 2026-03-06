// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_result_response.dart';
import 'hybrid_connection_config_response.dart';

/// Result data returned by listConnectedClusterUserCredentials.
class ListConnectedClusterUserCredentialsResult {
  /// Contains the REP (rendezvous endpoint) and “Sender” access token.
  final HybridConnectionConfigResponse hybridConnectionConfig;
  /// Base64-encoded Kubernetes configuration file.
  final List<CredentialResultResponse> kubeconfigs;

  /// Creates a new [ListConnectedClusterUserCredentialsResult].
  /// [hybridConnectionConfig] Contains the REP (rendezvous endpoint) and “Sender” access token.
  /// [kubeconfigs] Base64-encoded Kubernetes configuration file.
  const ListConnectedClusterUserCredentialsResult({
    required this.hybridConnectionConfig,
    required this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionConfig': hybridConnectionConfig.toMap(),
      'kubeconfigs': pulumi.Input.encodeList<CredentialResultResponse, Map<String, dynamic>>(kubeconfigs, (value) => value.toMap()),
    };
  }

  factory ListConnectedClusterUserCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListConnectedClusterUserCredentialsResult(
      hybridConnectionConfig: HybridConnectionConfigResponse.fromMap((map['hybridConnectionConfig']! as Map).cast<String, dynamic>()),
      kubeconfigs: pulumi.Input.decodeList<CredentialResultResponse>(map['kubeconfigs']!, (value) => CredentialResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

