// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_core_network_function_template.dart';

/// Virtual network function network function definition version properties.
class VirtualNetworkFunctionNetworkFunctionDefinitionVersion {
  /// The deployment parameters of the network function definition version.
  final pulumi.Input<String>? deployParameters;

  /// The network function definition version description.
  final pulumi.Input<String>? description;

  /// Virtual network function template.
  final pulumi.Input<AzureCoreNetworkFunctionTemplate>? networkFunctionTemplate;

  /// The network function type.
  /// Expected value is 'VirtualNetworkFunction'.
  final pulumi.Input<String> networkFunctionType;

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
      'networkFunctionTemplate':
          ?pulumi.Input.mapOptionalInputValue<
            AzureCoreNetworkFunctionTemplate,
            Map<String, dynamic>
          >(networkFunctionTemplate, (value) => value.toMap()),
      'networkFunctionType': networkFunctionType,
    };
  }

  factory VirtualNetworkFunctionNetworkFunctionDefinitionVersion.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkFunctionNetworkFunctionDefinitionVersion(
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
          AzureCoreNetworkFunctionTemplate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      networkFunctionType: pulumi.Input.fromValue(
        map['networkFunctionType'] as String,
      ),
    );
  }
}
