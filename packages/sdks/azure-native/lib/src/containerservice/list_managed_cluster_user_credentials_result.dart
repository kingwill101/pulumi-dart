// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_result_response.dart';

/// Result data returned by listManagedClusterUserCredentials.
class ListManagedClusterUserCredentialsResult {
  /// Base64-encoded Kubernetes configuration file.
  final List<CredentialResultResponse> kubeconfigs;

  /// Creates a new [ListManagedClusterUserCredentialsResult].
  /// [kubeconfigs] Base64-encoded Kubernetes configuration file.
  ListManagedClusterUserCredentialsResult({required this.kubeconfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs':
          pulumi.Input.encodeList<
            CredentialResultResponse,
            Map<String, dynamic>
          >(kubeconfigs, (value) => value.toMap()),
    };
  }

  factory ListManagedClusterUserCredentialsResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListManagedClusterUserCredentialsResult(
      kubeconfigs: pulumi.Input.decodeList<CredentialResultResponse>(
        map['kubeconfigs']!,
        (value) => CredentialResultResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
