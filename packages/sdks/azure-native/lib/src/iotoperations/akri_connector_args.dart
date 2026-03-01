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
    required pulumi.Output<String> akriConnectorTemplateName,
    pulumi.Output<String>? connectorName,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      akriConnectorTemplateName = pulumi.Input.asInput<String>(akriConnectorTemplateName),
      connectorName = pulumi.Input.asOptionalInput<String>(connectorName),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      akriConnectorTemplateName: pulumi.Output.create<String>(map['akriConnectorTemplateName'] as String),
      connectorName: map['connectorName'] == null ? null : pulumi.Output.create<String>(map['connectorName'] as String),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

