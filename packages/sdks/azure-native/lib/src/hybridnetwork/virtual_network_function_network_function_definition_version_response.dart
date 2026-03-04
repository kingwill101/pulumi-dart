// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_network_function_template_response.dart';

/// Virtual network function network function definition version properties.
class VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse {
  /// The deployment parameters of the network function definition version.
  final pulumi.Input<String>? deployParameters;

  /// The network function definition version description.
  final pulumi.Input<String>? description;

  /// Virtual network function template.
  final pulumi.Input<AzureCoreNetworkFunctionTemplateResponse>?
  networkFunctionTemplate;

  /// The network function type.
  /// Expected value is 'VirtualNetworkFunction'.
  final pulumi.Input<String> networkFunctionType;

  /// The provisioning state of the network function definition version resource.
  final pulumi.Input<String> provisioningState;

  /// The network function definition version state.
  final pulumi.Input<String> versionState;

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
      'networkFunctionTemplate':
          ?pulumi.Input.mapOptionalInputValue<
            AzureCoreNetworkFunctionTemplateResponse,
            Map<String, dynamic>
          >(networkFunctionTemplate, (value) => value.toMap()),
      'networkFunctionType': networkFunctionType,
      'provisioningState': provisioningState,
      'versionState': versionState,
    };
  }

  factory VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkFunctionNetworkFunctionDefinitionVersionResponse(
      deployParameters: (() {
        final guardedValue = map['deployParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkFunctionTemplate: (() {
        final guardedValue = map['networkFunctionTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureCoreNetworkFunctionTemplateResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkFunctionType: pulumi.Input.fromValue(
        map['networkFunctionType'] as String,
      ),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      versionState: pulumi.Input.fromValue(map['versionState'] as String),
    );
  }
}
