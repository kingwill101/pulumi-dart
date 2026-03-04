// ignore_for_file: unused_element, unnecessary_cast

import 'iot_mapping_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getIotConnectorFhirDestination.
class GetIotConnectorFhirDestinationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;

  /// FHIR Mappings
  final IotMappingPropertiesResponse fhirMapping;

  /// Fully qualified resource id of the FHIR service to connect to.
  final String fhirServiceResourceId;

  /// The resource identifier.
  final String id;

  /// The resource location.
  final String? location;

  /// The resource name.
  final String name;

  /// Determines how resource identity is resolved on the destination.
  final String resourceIdentityResolutionType;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// The resource type.
  final String type;

  /// Creates a new [GetIotConnectorFhirDestinationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [fhirMapping] FHIR Mappings
  /// [fhirServiceResourceId] Fully qualified resource id of the FHIR service to connect to.
  /// [id] The resource identifier.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [resourceIdentityResolutionType] Determines how resource identity is resolved on the destination.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The resource type.
  GetIotConnectorFhirDestinationResult({
    required this.azureApiVersion,
    this.etag,
    required this.fhirMapping,
    required this.fhirServiceResourceId,
    required this.id,
    this.location,
    required this.name,
    required this.resourceIdentityResolutionType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'fhirMapping': fhirMapping.toMap(),
      'fhirServiceResourceId': fhirServiceResourceId,
      'id': id,
      'location': ?location,
      'name': name,
      'resourceIdentityResolutionType': resourceIdentityResolutionType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetIotConnectorFhirDestinationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetIotConnectorFhirDestinationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      fhirMapping: IotMappingPropertiesResponse.fromMap(
        (map['fhirMapping']! as Map).cast<String, dynamic>(),
      ),
      fhirServiceResourceId: map['fhirServiceResourceId'] as String,
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      resourceIdentityResolutionType:
          map['resourceIdentityResolutionType'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
