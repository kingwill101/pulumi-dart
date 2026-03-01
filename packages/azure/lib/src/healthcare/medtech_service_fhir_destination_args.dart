// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_medtech_service_fhir_destination_medtech_service_fhir_destination_args_doc}
/// The set of arguments for MedtechServiceFhirDestination.
/// {@endtemplate}
/// {@macro pulumi_healthcare_medtech_service_fhir_destination_medtech_service_fhir_destination_args_doc}
class MedtechServiceFhirDestinationArgs {
  /// Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  final pulumi.Input<String> destinationFhirMappingJson;
  /// Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  final pulumi.Input<String> destinationFhirServiceId;
  /// Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  final pulumi.Input<String> destinationIdentityResolutionType;
  /// Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String> medtechServiceId;
  /// Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [MedtechServiceFhirDestinationArgs].
  /// [destinationFhirMappingJson] Specifies the destination Fhir mappings of the Med Tech Service Fhir Destination.
  /// [destinationFhirServiceId] Specifies the destination fhir service id of the Med Tech Service Fhir Destination.
  /// [destinationIdentityResolutionType] Specifies the destination identity resolution type where the Healthcare Med Tech Service Fhir Destination should be created. Possible values are `Create`, `Lookup`.
  /// [location] Specifies the Azure Region where the Healthcare Med Tech Service Fhir Destination should be created. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  /// [medtechServiceId] Specifies the name of the Healthcare Med Tech Service where the Healthcare Med Tech Service Fhir Destination should exist. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  /// [name] Specifies the name of the Healthcare Med Tech Service Fhir Destination. Changing this forces a new Healthcare Med Tech Service Fhir Destination to be created.
  MedtechServiceFhirDestinationArgs({
    required String destinationFhirMappingJson,
    required String destinationFhirServiceId,
    required String destinationIdentityResolutionType,
    String? location,
    required String medtechServiceId,
    String? name,
  }) :
      destinationFhirMappingJson = pulumi.Input.asInput<String>(destinationFhirMappingJson),
      destinationFhirServiceId = pulumi.Input.asInput<String>(destinationFhirServiceId),
      destinationIdentityResolutionType = pulumi.Input.asInput<String>(destinationIdentityResolutionType),
      location = pulumi.Input.asOptionalInput<String>(location),
      medtechServiceId = pulumi.Input.asInput<String>(medtechServiceId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationFhirMappingJson': destinationFhirMappingJson,
      'destinationFhirServiceId': destinationFhirServiceId,
      'destinationIdentityResolutionType': destinationIdentityResolutionType,
      'location': ?location,
      'medtechServiceId': medtechServiceId,
      'name': ?name,
    };
  }

  factory MedtechServiceFhirDestinationArgs.fromMap(Map<String, dynamic> map) {
    return MedtechServiceFhirDestinationArgs(
      destinationFhirMappingJson: map['destinationFhirMappingJson'] as String,
      destinationFhirServiceId: map['destinationFhirServiceId'] as String,
      destinationIdentityResolutionType: map['destinationIdentityResolutionType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      medtechServiceId: map['medtechServiceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

