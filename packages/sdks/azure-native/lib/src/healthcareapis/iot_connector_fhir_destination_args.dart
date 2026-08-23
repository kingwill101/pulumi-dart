// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_mapping_properties.dart';

/// {@template pulumi_healthcareapis_iot_connector_fhir_destination_args_doc}
/// The set of arguments for IotConnectorFhirDestination.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_iot_connector_fhir_destination_args_doc}
class IotConnectorFhirDestinationArgs {
  /// The name of IoT Connector FHIR destination resource.
  final pulumi.Input<String>? fhirDestinationName;
  /// FHIR Mappings
  final pulumi.Input<IotMappingProperties> fhirMapping;
  /// Fully qualified resource id of the FHIR service to connect to.
  final pulumi.Input<String> fhirServiceResourceId;
  /// The name of IoT Connector resource.
  final pulumi.Input<String> iotConnectorName;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// Determines how resource identity is resolved on the destination.
  final pulumi.Input<String> resourceIdentityResolutionType;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IotConnectorFhirDestinationArgs].
  /// [fhirDestinationName] The name of IoT Connector FHIR destination resource.
  /// [fhirMapping] FHIR Mappings
  /// [fhirServiceResourceId] Fully qualified resource id of the FHIR service to connect to.
  /// [iotConnectorName] The name of IoT Connector resource.
  /// [location] The resource location.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [resourceIdentityResolutionType] Determines how resource identity is resolved on the destination.
  /// [workspaceName] The name of workspace resource.
  const IotConnectorFhirDestinationArgs({
    this.fhirDestinationName,
    required this.fhirMapping,
    required this.fhirServiceResourceId,
    required this.iotConnectorName,
    this.location,
    required this.resourceGroupName,
    required this.resourceIdentityResolutionType,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fhirDestinationName': ?fhirDestinationName,
      'fhirMapping': pulumi.Input.mapInputValue<IotMappingProperties, Map<String, dynamic>>(fhirMapping, (value) => value.toMap()),
      'fhirServiceResourceId': fhirServiceResourceId,
      'iotConnectorName': iotConnectorName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceIdentityResolutionType': resourceIdentityResolutionType,
      'workspaceName': workspaceName,
    };
  }

  factory IotConnectorFhirDestinationArgs.fromMap(Map<String, dynamic> map) {
    return IotConnectorFhirDestinationArgs(
      fhirDestinationName: (() { final guardedValue = map['fhirDestinationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fhirMapping: pulumi.Input.fromValue(IotMappingProperties.fromMap((map['fhirMapping']! as Map).cast<String, dynamic>())),
      fhirServiceResourceId: pulumi.Input.fromValue(map['fhirServiceResourceId'] as String),
      iotConnectorName: pulumi.Input.fromValue(map['iotConnectorName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceIdentityResolutionType: pulumi.Input.fromValue(map['resourceIdentityResolutionType'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
