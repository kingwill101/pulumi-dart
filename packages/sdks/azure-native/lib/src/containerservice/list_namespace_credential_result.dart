// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_result_response.dart';

/// Result data returned by listNamespaceCredential.
class ListNamespaceCredentialResult {
  /// Base64-encoded Kubernetes configuration file.
  final List<CredentialResultResponse> kubeconfigs;

  /// Creates a new [ListNamespaceCredentialResult].
  /// [kubeconfigs] Base64-encoded Kubernetes configuration file.
  const ListNamespaceCredentialResult({
    required this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': pulumi.Input.encodeList<CredentialResultResponse, Map<String, dynamic>>(kubeconfigs, (value) => value.toMap()),
    };
  }

  factory ListNamespaceCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListNamespaceCredentialResult(
      kubeconfigs: pulumi.Input.decodeList<CredentialResultResponse>(map['kubeconfigs']!, (value) => CredentialResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
