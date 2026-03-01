// ignore_for_file: unused_element, unnecessary_cast

import 'azure_core_network_function_template_response.dart';

/// Virtual network function network function definition version properties.
class VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse {
  /// The deployment parameters of the network function definition version.
  final String? deployParameters;
  /// The network function definition version description.
  final String? description;
  /// Virtual network function template.
  final AzureCoreNetworkFunctionTemplateResponse? networkFunctionTemplate;
  /// The network function type.
  /// Expected value is 'VirtualNetworkFunction'.
  final String networkFunctionType;
  /// The provisioning state of the network function definition version resource.
  final String provisioningState;
  /// The network function definition version state.
  final String versionState;

  /// Creates a new [VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse].
  /// [deployParameters] The deployment parameters of the network function definition version.
  /// [description] The network function definition version description.
  /// [networkFunctionTemplate] Virtual network function template.
  /// [networkFunctionType] The network function type.
  /// [provisioningState] The provisioning state of the network function definition version resource.
  /// [versionState] The network function definition version state.
  VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse({
    this.deployParameters,
    this.description,
    this.networkFunctionTemplate,
    required this.networkFunctionType,
    required this.provisioningState,
    required this.versionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployParameters': ?deployParameters,
      'description': ?description,
      'networkFunctionTemplate': ?networkFunctionTemplate == null ? null : networkFunctionTemplate!.toMap(),
      'networkFunctionType': networkFunctionType,
      'provisioningState': provisioningState,
      'versionState': versionState,
    };
  }

  factory VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse(
      deployParameters: map['deployParameters'] == null ? null : map['deployParameters'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      networkFunctionTemplate: map['networkFunctionTemplate'] == null ? null : AzureCoreNetworkFunctionTemplateResponse.fromMap((map['networkFunctionTemplate'] as Map).cast<String, dynamic>()),
      networkFunctionType: map['networkFunctionType'] as String,
      provisioningState: map['provisioningState'] as String,
      versionState: map['versionState'] as String,
    );
  }
}

