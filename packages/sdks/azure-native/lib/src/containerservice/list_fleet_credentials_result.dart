// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_credential_result_response.dart';

/// Result data returned by listFleetCredentials.
class ListFleetCredentialsResult {
  /// Array of base64-encoded Kubernetes configuration files.
  final List<FleetCredentialResultResponse> kubeconfigs;

  /// Creates a new [ListFleetCredentialsResult].
  /// [kubeconfigs] Array of base64-encoded Kubernetes configuration files.
  const ListFleetCredentialsResult({
    required this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': pulumi.Input.encodeList<FleetCredentialResultResponse, Map<String, dynamic>>(kubeconfigs, (value) => value.toMap()),
    };
  }

  factory ListFleetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListFleetCredentialsResult(
      kubeconfigs: pulumi.Input.decodeList<FleetCredentialResultResponse>(map['kubeconfigs']!, (value) => FleetCredentialResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

