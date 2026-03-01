// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iotoperations_get_akri_connector_args_doc}
/// Arguments for getAkriConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_get_akri_connector_args_doc}
class GetAkriConnectorArgs {
  /// Name of AkriConnectorTemplate resource.
  final pulumi.Input<String> akriConnectorTemplateName;
  /// Name of AkriConnector resource.
  final pulumi.Input<String> connectorName;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAkriConnectorArgs].
  /// [akriConnectorTemplateName] Name of AkriConnectorTemplate resource.
  /// [connectorName] Name of AkriConnector resource.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAkriConnectorArgs({
    required String akriConnectorTemplateName,
    required String connectorName,
    required String instanceName,
    required String resourceGroupName,
  }) :
      akriConnectorTemplateName = pulumi.Input.asInput<String>(akriConnectorTemplateName),
      connectorName = pulumi.Input.asInput<String>(connectorName),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akriConnectorTemplateName': akriConnectorTemplateName,
      'connectorName': connectorName,
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAkriConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAkriConnectorArgs(
      akriConnectorTemplateName: map['akriConnectorTemplateName'] as String,
      connectorName: map['connectorName'] as String,
      instanceName: map['instanceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

