// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_arc_kubernetes_network_function_template.dart';

/// Containerized network function network function definition version properties.
class ContainerizedNetworkFunctionDefinitionVersion {
  /// The deployment parameters of the network function definition version.
  final pulumi.Input<String>? deployParameters;
  /// The network function definition version description.
  final pulumi.Input<String>? description;
  /// Containerized network function template.
  final pulumi.Input<AzureArcKubernetesNetworkFunctionTemplate>? networkFunctionTemplate;
  /// The network function type.
  /// Expected value is 'ContainerizedNetworkFunction'.
  final pulumi.Input<String> networkFunctionType;

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
      'networkFunctionTemplate': ?pulumi.Input.mapOptionalInputValue<AzureArcKubernetesNetworkFunctionTemplate, Map<String, dynamic>>(networkFunctionTemplate, (value) => value.toMap()),
      'networkFunctionType': networkFunctionType,
    };
  }

  factory ContainerizedNetworkFunctionDefinitionVersion.fromMap(Map<String, dynamic> map) {
    return ContainerizedNetworkFunctionDefinitionVersion(
      deployParameters: (() { final guardedValue = map['deployParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFunctionTemplate: (() { final guardedValue = map['networkFunctionTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureArcKubernetesNetworkFunctionTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkFunctionType: pulumi.Input.fromValue(map['networkFunctionType'] as String),
    );
  }
}

