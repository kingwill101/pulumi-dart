// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_result_response.dart';

class ListCredentialResponseResponseProperties {
  /// Base64-encoded Kubernetes configuration file.
  final pulumi.Input<List<CredentialResultResponse>> kubeconfigs;

  /// Creates a new [ListCredentialResponseResponseProperties].
  /// [kubeconfigs] Base64-encoded Kubernetes configuration file.
  const ListCredentialResponseResponseProperties({
    required this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': pulumi.Input.mapInputValue<List<CredentialResultResponse>, List<Map<String, dynamic>>>(kubeconfigs, (value) => pulumi.Input.encodeList<CredentialResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListCredentialResponseResponseProperties.fromMap(Map<String, dynamic> map) {
    return ListCredentialResponseResponseProperties(
      kubeconfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<CredentialResultResponse>(map['kubeconfigs']!, (value) => CredentialResultResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
