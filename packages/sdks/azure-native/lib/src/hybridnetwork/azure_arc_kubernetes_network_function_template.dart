// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_helm_application.dart';

/// Azure Arc kubernetes network function template.
class AzureArcKubernetesNetworkFunctionTemplate {
  /// Network function applications.
  final pulumi.Input<List<AzureArcKubernetesHelmApplication>>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureArcKubernetes'.
  final pulumi.Input<String> nfviType;

  /// Creates a new [AzureArcKubernetesNetworkFunctionTemplate].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureArcKubernetesNetworkFunctionTemplate({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?pulumi.Input.mapOptionalInputValue<List<AzureArcKubernetesHelmApplication>, List<Map<String, dynamic>>>(networkFunctionApplications, (value) => pulumi.Input.encodeList<AzureArcKubernetesHelmApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nfviType': nfviType,
    };
  }

  factory AzureArcKubernetesNetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesNetworkFunctionTemplate(
      networkFunctionApplications: (() { final guardedValue = map['networkFunctionApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureArcKubernetesHelmApplication>(guardedValue, (value) => AzureArcKubernetesHelmApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nfviType: pulumi.Input.fromValue(map['nfviType'] as String),
    );
  }
}

