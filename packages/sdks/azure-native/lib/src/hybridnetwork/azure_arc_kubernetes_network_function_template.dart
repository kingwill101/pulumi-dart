// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_helm_application.dart';

/// Azure Arc kubernetes network function template.
class AzureArcKubernetesNetworkFunctionTemplate {
  /// Network function applications.
  final List<AzureArcKubernetesHelmApplication>? networkFunctionApplications;
  /// The network function type.
  /// Expected value is 'AzureArcKubernetes'.
  final String nfviType;

  /// Creates a new [AzureArcKubernetesNetworkFunctionTemplate].
  /// [networkFunctionApplications] Network function applications.
  /// [nfviType] The network function type.
  AzureArcKubernetesNetworkFunctionTemplate({
    this.networkFunctionApplications,
    required this.nfviType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkFunctionApplications': ?networkFunctionApplications == null ? null : pulumi.Input.encodeList<AzureArcKubernetesHelmApplication, Map<String, dynamic>>(networkFunctionApplications!, (value) => value.toMap()),
      'nfviType': nfviType,
    };
  }

  factory AzureArcKubernetesNetworkFunctionTemplate.fromMap(Map<String, dynamic> map) {
    return AzureArcKubernetesNetworkFunctionTemplate(
      networkFunctionApplications: map['networkFunctionApplications'] == null ? null : pulumi.Input.decodeList<AzureArcKubernetesHelmApplication>(map['networkFunctionApplications'], (value) => AzureArcKubernetesHelmApplication.fromMap((value as Map).cast<String, dynamic>())),
      nfviType: map['nfviType'] as String,
    );
  }
}

