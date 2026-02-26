// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workload_workload_property_extended_metadata/workload_workload_property_extended_metadata.dart';
import '../workload_workload_property_functional_type/workload_workload_property_functional_type.dart';
import '../workload_workload_property_identity/workload_workload_property_identity.dart';

class WorkloadWorkloadProperty {
  /// (Output)
  /// Output only. Additional metadata specific to the resource type.
  /// Structure is documented below.
  final List<WorkloadWorkloadPropertyExtendedMetadata>? extendedMetadatas;

  /// (Output)
  /// Output only. The functional type of a service or workload.
  /// Structure is documented below.
  final List<WorkloadWorkloadPropertyFunctionalType>? functionalTypes;

  /// (Output)
  /// Output only. The service project identifier that the underlying cloud resource resides in. Empty for non cloud resources.
  final String? gcpProject;

  /// (Output)
  /// The identity associated with the workload.
  /// Structure is documented below.
  final List<WorkloadWorkloadPropertyIdentity>? identities;

  /// Part of <span pulumi-lang-nodejs="`parent`" pulumi-lang-dotnet="`Parent`" pulumi-lang-go="`parent`" pulumi-lang-python="`parent`" pulumi-lang-yaml="`parent`" pulumi-lang-java="`parent`">`parent`</span>.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final String? location;

  /// (Output)
  /// Output only. The location that the underlying compute resource resides in if it is zonal (e.g us-west1-a).
  final String? zone;

  WorkloadWorkloadProperty({
    this.extendedMetadatas,
    this.functionalTypes,
    this.gcpProject,
    this.identities,
    this.location,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final extendedMetadatasValue = extendedMetadatas;
    if (extendedMetadatasValue != null) {
      map['extendedMetadatas'] = Input.encodeList<
              WorkloadWorkloadPropertyExtendedMetadata, Map<String, dynamic>>(
          extendedMetadatasValue, (value) => value.toMap());
    }
    final functionalTypesValue = functionalTypes;
    if (functionalTypesValue != null) {
      map['functionalTypes'] = Input.encodeList<
          WorkloadWorkloadPropertyFunctionalType,
          Map<String, dynamic>>(functionalTypesValue, (value) => value.toMap());
    }
    final gcpProjectValue = gcpProject;
    if (gcpProjectValue != null) {
      map['gcpProject'] = gcpProjectValue;
    }
    final identitiesValue = identities;
    if (identitiesValue != null) {
      map['identities'] = Input.encodeList<WorkloadWorkloadPropertyIdentity,
          Map<String, dynamic>>(identitiesValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory WorkloadWorkloadProperty.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadProperty(
      extendedMetadatas: map['extendedMetadatas'] == null
          ? null
          : Input.decodeList<WorkloadWorkloadPropertyExtendedMetadata>(
              map['extendedMetadatas'],
              (value) => WorkloadWorkloadPropertyExtendedMetadata.fromMap(
                  (value as Map).cast<String, dynamic>())),
      functionalTypes: map['functionalTypes'] == null
          ? null
          : Input.decodeList<WorkloadWorkloadPropertyFunctionalType>(
              map['functionalTypes'],
              (value) => WorkloadWorkloadPropertyFunctionalType.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gcpProject:
          map['gcpProject'] == null ? null : map['gcpProject'] as String,
      identities: map['identities'] == null
          ? null
          : Input.decodeList<WorkloadWorkloadPropertyIdentity>(
              map['identities'],
              (value) => WorkloadWorkloadPropertyIdentity.fromMap(
                  (value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
