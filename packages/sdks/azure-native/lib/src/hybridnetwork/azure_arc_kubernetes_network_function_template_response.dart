// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_helm_application_response.dart';

/// Azure Arc kubernetes network function template.
class AzureArcKubernetesNetworkFunctionTemplateResponse {
  /// Network function applications.
  final pulumi.Input<List<AzureArcKubernetesHelmApplicationResponse>?>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureArcKubernetes'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureArcKubernetesNetworkFunctionTemplateResponse].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  const AzureArcKubernetesNetworkFunctionTemplateResponse({
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
      networkFunctionApplications: (() { final guardedValue = map['networkFunctionApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureArcKubernetesHelmApplicationResponse>(guardedValue, (value) => AzureArcKubernetesHelmApplicationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}
