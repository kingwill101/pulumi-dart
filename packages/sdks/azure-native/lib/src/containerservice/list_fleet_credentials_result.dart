// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_credential_result_response.dart';

/// Result data returned by listFleetCredentials.
class ListFleetCredentialsResult {
  /// Array of base64-encoded Kubernetes configuration files.
  final List<FleetCredentialResultResponse>? kubeconfigs;

  /// Creates a new [ListFleetCredentialsResult].
  /// [kubeconfigs] Array of base64-encoded Kubernetes configuration files.
  const ListFleetCredentialsResult({
    this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': ?(() { final guardedValue = kubeconfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<FleetCredentialResultResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListFleetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListFleetCredentialsResult(
      kubeconfigs: (() { final guardedValue = map['kubeconfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FleetCredentialResultResponse>(guardedValue, (value) => FleetCredentialResultResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
