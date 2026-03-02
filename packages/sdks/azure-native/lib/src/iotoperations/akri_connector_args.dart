// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_iotoperations_akri_connector_args_doc}
/// The set of arguments for AkriConnector.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_akri_connector_args_doc}
class AkriConnectorArgs {
  /// Name of AkriConnectorTemplate resource.
  final pulumi.Input<String> akriConnectorTemplateName;
  /// Name of AkriConnector resource.
  final pulumi.Input<String>? connectorName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [AkriConnectorArgs].
  /// [akriConnectorTemplateName] Name of AkriConnectorTemplate resource.
  /// [connectorName] Name of AkriConnector resource.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  AkriConnectorArgs({
    required this.akriConnectorTemplateName,
    this.connectorName,
    this.extendedLocation,
    required this.instanceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'akriConnectorTemplateName': akriConnectorTemplateName,
      'connectorName': ?connectorName,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory AkriConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AkriConnectorArgs(
      akriConnectorTemplateName: (map['akriConnectorTemplateName'] as String).input(),
      connectorName: map['connectorName'] == null ? null : (map['connectorName'] as String).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      instanceName: (map['instanceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

