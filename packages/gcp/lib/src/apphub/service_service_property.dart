// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_property_extended_metadata.dart';
import 'service_service_property_functional_type.dart';
import 'service_service_property_identity.dart';
import 'service_service_property_registration_type.dart';

class ServiceServiceProperty {
  /// (Output)
  /// Output only. Additional metadata specific to the resource type.
  /// Structure is documented below.
  final List<ServiceServicePropertyExtendedMetadata>? extendedMetadatas;

  /// (Output)
  /// Output only. The type of the service.
  /// Structure is documented below.
  final List<ServiceServicePropertyFunctionalType>? functionalTypes;

  /// (Output)
  /// Output only. The service project identifier that the underlying cloud resource resides in.
  final String? gcpProject;

  /// (Output)
  /// The identity associated with the service.
  /// Structure is documented below.
  final List<ServiceServicePropertyIdentity>? identities;

  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final String? location;

  /// (Output)
  /// Output only. The registration type of the service.
  /// Structure is documented below.
  final List<ServiceServicePropertyRegistrationType>? registrationTypes;

  /// (Output)
  /// Output only. The location that the underlying resource resides in if it is zonal, for example, us-west1-a).
  final String? zone;

  /// Creates a new [ServiceServiceProperty].
  /// [extendedMetadatas] (Output)
  /// [functionalTypes] (Output)
  /// [gcpProject] (Output)
  /// [identities] (Output)
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [registrationTypes] (Output)
  /// [zone] (Output)
  ServiceServiceProperty({
    this.extendedMetadatas,
    this.functionalTypes,
    this.gcpProject,
    this.identities,
    this.location,
    this.registrationTypes,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedMetadatas': ?extendedMetadatas == null
          ? null
          : pulumi.Input.encodeList<
              ServiceServicePropertyExtendedMetadata,
              Map<String, dynamic>
            >(extendedMetadatas!, (value) => value.toMap()),
      'functionalTypes': ?functionalTypes == null
          ? null
          : pulumi.Input.encodeList<
              ServiceServicePropertyFunctionalType,
              Map<String, dynamic>
            >(functionalTypes!, (value) => value.toMap()),
      'gcpProject': ?gcpProject,
      'identities': ?identities == null
          ? null
          : pulumi.Input.encodeList<
              ServiceServicePropertyIdentity,
              Map<String, dynamic>
            >(identities!, (value) => value.toMap()),
      'location': ?location,
      'registrationTypes': ?registrationTypes == null
          ? null
          : pulumi.Input.encodeList<
              ServiceServicePropertyRegistrationType,
              Map<String, dynamic>
            >(registrationTypes!, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory ServiceServiceProperty.fromMap(Map<String, dynamic> map) {
    return ServiceServiceProperty(
      extendedMetadatas: map['extendedMetadatas'] == null
          ? null
          : pulumi.Input.decodeList<ServiceServicePropertyExtendedMetadata>(
              map['extendedMetadatas'],
              (value) => ServiceServicePropertyExtendedMetadata.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      functionalTypes: map['functionalTypes'] == null
          ? null
          : pulumi.Input.decodeList<ServiceServicePropertyFunctionalType>(
              map['functionalTypes'],
              (value) => ServiceServicePropertyFunctionalType.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      gcpProject: map['gcpProject'] == null
          ? null
          : map['gcpProject'] as String,
      identities: map['identities'] == null
          ? null
          : pulumi.Input.decodeList<ServiceServicePropertyIdentity>(
              map['identities'],
              (value) => ServiceServicePropertyIdentity.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      registrationTypes: map['registrationTypes'] == null
          ? null
          : pulumi.Input.decodeList<ServiceServicePropertyRegistrationType>(
              map['registrationTypes'],
              (value) => ServiceServicePropertyRegistrationType.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
