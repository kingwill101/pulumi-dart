// ignore_for_file: unused_element, unnecessary_cast

import 'azure_arc_kubernetes_network_function_template.dart';

/// Containerized network function network function definition version properties.
class ContainerizedNetworkFunctionDefinitionVersion {
  /// The deployment parameters of the network function definition version.
  final String? deployParameters;
  /// The network function definition version description.
  final String? description;
  /// Containerized network function template.
  final AzureArcKubernetesNetworkFunctionTemplate? networkFunctionTemplate;
  /// The network function type.
  /// Expected value is 'ContainerizedNetworkFunction'.
  final String networkFunctionType;

  /// Creates a new [ContainerizedNetworkFunctionDefinitionVersion].
  /// [deployParameters] The deployment parameters of the network function definition version.
  /// [description] The network function definition version description.
  /// [networkFunctionTemplate] Containerized network function template.
  /// [networkFunctionType] The network function type.
  ContainerizedNetworkFunctionDefinitionVersion({
    this.deployParameters,
    this.description,
    this.networkFunctionTemplate,
    required this.networkFunctionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployParameters': ?deployParameters,
      'description': ?description,
      'networkFunctionTemplate': ?networkFunctionTemplate == null ? null : networkFunctionTemplate!.toMap(),
      'networkFunctionType': networkFunctionType,
    };
  }

  factory ContainerizedNetworkFunctionDefinitionVersion.fromMap(Map<String, dynamic> map) {
    return ContainerizedNetworkFunctionDefinitionVersion(
      deployParameters: map['deployParameters'] == null ? null : map['deployParameters'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      networkFunctionTemplate: map['networkFunctionTemplate'] == null ? null : AzureArcKubernetesNetworkFunctionTemplate.fromMap((map['networkFunctionTemplate'] as Map).cast<String, dynamic>()),
      networkFunctionType: map['networkFunctionType'] as String,
    );
  }
}

