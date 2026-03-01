// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovered_workload_workload_property.dart';
import 'get_discovered_workload_workload_reference.dart';

/// Result data returned by getDiscoveredWorkload.
class GetDiscoveredWorkloadResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The location that the underlying resource resides in.
  final String location;

  /// Resource name of a Workload. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}".
  final String name;
  final String? project;

  /// Properties of an underlying compute resource that can comprise a Workload. Structure is documented below
  final List<GetDiscoveredWorkloadWorkloadProperty> workloadProperties;

  /// Reference to an underlying networking resource that can comprise a Workload. Structure is documented below
  final List<GetDiscoveredWorkloadWorkloadReference> workloadReferences;
  final String workloadUri;

  /// Creates a new [GetDiscoveredWorkloadResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location that the underlying resource resides in.
  /// [name] Resource name of a Workload. Format: "projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}".
  /// [project] Optional.
  /// [workloadProperties] Properties of an underlying compute resource that can comprise a Workload. Structure is documented below
  /// [workloadReferences] Reference to an underlying networking resource that can comprise a Workload. Structure is documented below
  /// [workloadUri] Required.
  GetDiscoveredWorkloadResult({
    required this.id,
    required this.location,
    required this.name,
    this.project,
    required this.workloadProperties,
    required this.workloadReferences,
    required this.workloadUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'project': ?project,
      'workloadProperties':
          pulumi.Input.encodeList<
            GetDiscoveredWorkloadWorkloadProperty,
            Map<String, dynamic>
          >(workloadProperties, (value) => value.toMap()),
      'workloadReferences':
          pulumi.Input.encodeList<
            GetDiscoveredWorkloadWorkloadReference,
            Map<String, dynamic>
          >(workloadReferences, (value) => value.toMap()),
      'workloadUri': workloadUri,
    };
  }

  factory GetDiscoveredWorkloadResult.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      workloadProperties:
          pulumi.Input.decodeList<GetDiscoveredWorkloadWorkloadProperty>(
            map['workloadProperties'],
            (value) => GetDiscoveredWorkloadWorkloadProperty.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      workloadReferences:
          pulumi.Input.decodeList<GetDiscoveredWorkloadWorkloadReference>(
            map['workloadReferences'],
            (value) => GetDiscoveredWorkloadWorkloadReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      workloadUri: map['workloadUri'] as String,
    );
  }
}
