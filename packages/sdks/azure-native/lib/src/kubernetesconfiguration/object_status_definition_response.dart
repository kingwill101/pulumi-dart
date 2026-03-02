// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'helm_release_properties_definition_response.dart';
import 'object_reference_definition_response.dart';
import 'object_status_condition_definition_response.dart';

/// Statuses of objects deployed by the user-specified kustomizations from the git repository.
class ObjectStatusDefinitionResponse {
  /// Object reference to the Kustomization that applied this object
  final pulumi.Input<ObjectReferenceDefinitionResponse>? appliedBy;
  /// Compliance state of the applied object showing whether the applied object has come into a ready state on the cluster.
  final pulumi.Input<String>? complianceState;
  /// Additional properties that are provided from objects of the HelmRelease kind
  final pulumi.Input<HelmReleasePropertiesDefinitionResponse>? helmReleaseProperties;
  /// Kind of the applied object
  final pulumi.Input<String>? kind;
  /// Name of the applied object
  final pulumi.Input<String>? name;
  /// Namespace of the applied object
  final pulumi.Input<String>? namespace;
  /// List of Kubernetes object status conditions present on the cluster
  final pulumi.Input<List<ObjectStatusConditionDefinitionResponse>>? statusConditions;

  /// Creates a new [ObjectStatusDefinitionResponse].
  /// [appliedBy] Object reference to the Kustomization that applied this object
  /// [complianceState] Compliance state of the applied object showing whether the applied object has come into a ready state on the cluster.
  /// [helmReleaseProperties] Additional properties that are provided from objects of the HelmRelease kind
  /// [kind] Kind of the applied object
  /// [name] Name of the applied object
  /// [namespace] Namespace of the applied object
  /// [statusConditions] List of Kubernetes object status conditions present on the cluster
  ObjectStatusDefinitionResponse({
    this.appliedBy,
    this.complianceState,
    this.helmReleaseProperties,
    this.kind,
    this.name,
    this.namespace,
    this.statusConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedBy': ?pulumi.Input.mapOptionalInputValue<ObjectReferenceDefinitionResponse, Map<String, dynamic>>(appliedBy, (value) => value.toMap()),
      'complianceState': ?complianceState,
      'helmReleaseProperties': ?pulumi.Input.mapOptionalInputValue<HelmReleasePropertiesDefinitionResponse, Map<String, dynamic>>(helmReleaseProperties, (value) => value.toMap()),
      'kind': ?kind,
      'name': ?name,
      'namespace': ?namespace,
      'statusConditions': ?pulumi.Input.mapOptionalInputValue<List<ObjectStatusConditionDefinitionResponse>, List<Map<String, dynamic>>>(statusConditions, (value) => pulumi.Input.encodeList<ObjectStatusConditionDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ObjectStatusDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ObjectStatusDefinitionResponse(
      appliedBy: map['appliedBy'] == null ? null : (ObjectReferenceDefinitionResponse.fromMap((map['appliedBy']! as Map).cast<String, dynamic>())).input(),
      complianceState: map['complianceState'] == null ? null : (map['complianceState']! as String).input(),
      helmReleaseProperties: map['helmReleaseProperties'] == null ? null : (HelmReleasePropertiesDefinitionResponse.fromMap((map['helmReleaseProperties']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      statusConditions: map['statusConditions'] == null ? null : (pulumi.Input.decodeList<ObjectStatusConditionDefinitionResponse>(map['statusConditions']!, (value) => ObjectStatusConditionDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

