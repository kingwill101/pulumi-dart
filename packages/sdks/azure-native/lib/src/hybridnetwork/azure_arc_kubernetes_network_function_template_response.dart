// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_helm_application_response.dart';

/// Azure Arc kubernetes network function template.
class AzureArcKubernetesNetworkFunctionTemplateResponse {
  /// Network function applications.
  final pulumi.Input<List<AzureArcKubernetesHelmApplicationResponse>>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureArcKubernetes'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureArcKubernetesNetworkFunctionTemplateResponse].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureArcKubernetesNetworkFunctionTemplateResponse({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?pulumi.Input.mapOptionalInputValue<List<AzureArcKubernetesHelmApplicationResponse>, List<Map<String, dynamic>>>(networkFunctionApplications, (value) => pulumi.Input.encodeList<AzureArcKubernetesHelmApplicationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfviType': nfviType,
    };
  }

  factory AzureArcKubernetesNetworkFunctionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesNetworkFunctionTemplateResponse(
      networkFunctionApplications: map['networkFunctionApplications'] == null ? null : (pulumi.Input.decodeList<AzureArcKubernetesHelmApplicationResponse>(map['networkFunctionApplications']!, (value) => AzureArcKubernetesHelmApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nfviType: (map['nfviType'] as String).input(),
    );
  }
}

