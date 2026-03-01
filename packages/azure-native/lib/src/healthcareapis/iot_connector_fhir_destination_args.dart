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
  IotConnectorFhirDestinationArgs({
    String? fhirDestinationName,
    required IotMappingProperties fhirMapping,
    required String fhirServiceResourceId,
    required String iotConnectorName,
    String? location,
    required String resourceGroupName,
    required String resourceIdentityResolutionType,
    required String workspaceName,
  }) :
      fhirDestinationName = pulumi.Input.asOptionalInput<String>(fhirDestinationName),
      fhirMapping = pulumi.Input.asInput<IotMappingProperties>(fhirMapping),
      fhirServiceResourceId = pulumi.Input.asInput<String>(fhirServiceResourceId),
      iotConnectorName = pulumi.Input.asInput<String>(iotConnectorName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceIdentityResolutionType = pulumi.Input.asInput<String>(resourceIdentityResolutionType),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      fhirDestinationName: map['fhirDestinationName'] == null ? null : map['fhirDestinationName'] as String,
      fhirMapping: IotMappingProperties.fromMap((map['fhirMapping'] as Map).cast<String, dynamic>()),
      fhirServiceResourceId: map['fhirServiceResourceId'] as String,
      iotConnectorName: map['iotConnectorName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceIdentityResolutionType: map['resourceIdentityResolutionType'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

