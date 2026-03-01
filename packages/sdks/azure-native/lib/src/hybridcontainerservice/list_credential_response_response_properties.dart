// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_result_response.dart';

class ListCredentialResponseResponseProperties {
  /// Base64-encoded Kubernetes configuration file.
  final List<CredentialResultResponse> kubeconfigs;

  /// Creates a new [ListCredentialResponseResponseProperties].
  /// [kubeconfigs] Base64-encoded Kubernetes configuration file.
  ListCredentialResponseResponseProperties({
    required this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': pulumi.Input.encodeList<CredentialResultResponse, Map<String, dynamic>>(kubeconfigs, (value) => value.toMap()),
    };
  }

  factory ListCredentialResponseResponseProperties.fromMap(Map<String, dynamic> map) {
    return ListCredentialResponseResponseProperties(
      kubeconfigs: pulumi.Input.decodeList<CredentialResultResponse>(map['kubeconfigs'], (value) => CredentialResultResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

