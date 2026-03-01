// ignore_for_file: unused_element, unnecessary_cast

import 'azure_core_network_function_template.dart';

/// Virtual network function network function definition version properties.
class VirtualNetworkFunctionNetworkFunctionDefinitionVersion {
  /// The deployment parameters of the network function definition version.
  final String? deployParameters;
  /// The network function definition version description.
  final String? description;
  /// Virtual network function template.
  final AzureCoreNetworkFunctionTemplate? networkFunctionTemplate;
  /// The network function type.
  /// Expected value is 'VirtualNetworkFunction'.
  final String networkFunctionType;

  /// Creates a new [VirtualNetworkFunctionNetworkFunctionDefinitionVersion].
  /// [deployParameters] The deployment parameters of the network function definition version.
  /// [description] The network function definition version description.
  /// [networkFunctionTemplate] Virtual network function template.
  /// [networkFunctionType] The network function type.
  VirtualNetworkFunctionNetworkFunctionDefinitionVersion({
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

  factory VirtualNetworkFunctionNetworkFunctionDefinitionVersion.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkFunctionNetworkFunctionDefinitionVersion(
      deployParameters: map['deployParameters'] == null ? null : map['deployParameters'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      networkFunctionTemplate: map['networkFunctionTemplate'] == null ? null : AzureCoreNetworkFunctionTemplate.fromMap((map['networkFunctionTemplate'] as Map).cast<String, dynamic>()),
      networkFunctionType: map['networkFunctionType'] as String,
    );
  }
}

