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
  final pulumi.Input<HelmReleasePropertiesDefinitionResponse>?
  helmReleaseProperties;

  /// Kind of the applied object
  final pulumi.Input<String>? kind;

  /// Name of the applied object
  final pulumi.Input<String>? name;

  /// Namespace of the applied object
  final pulumi.Input<String>? namespace;

  /// List of Kubernetes object status conditions present on the cluster
  final pulumi.Input<List<ObjectStatusConditionDefinitionResponse>>?
  statusConditions;

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
      'appliedBy':
          ?pulumi.Input.mapOptionalInputValue<
            ObjectReferenceDefinitionResponse,
            Map<String, dynamic>
          >(appliedBy, (value) => value.toMap()),
      'complianceState': ?complianceState,
      'helmReleaseProperties':
          ?pulumi.Input.mapOptionalInputValue<
            HelmReleasePropertiesDefinitionResponse,
            Map<String, dynamic>
          >(helmReleaseProperties, (value) => value.toMap()),
      'kind': ?kind,
      'name': ?name,
      'namespace': ?namespace,
      'statusConditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ObjectStatusConditionDefinitionResponse>,
            List<Map<String, dynamic>>
          >(
            statusConditions,
            (value) =>
                pulumi.Input.encodeList<
                  ObjectStatusConditionDefinitionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ObjectStatusDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ObjectStatusDefinitionResponse(
      appliedBy: (() {
        final guardedValue = map['appliedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ObjectReferenceDefinitionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      complianceState: (() {
        final guardedValue = map['complianceState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      helmReleaseProperties: (() {
        final guardedValue = map['helmReleaseProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HelmReleasePropertiesDefinitionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusConditions: (() {
        final guardedValue = map['statusConditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ObjectStatusConditionDefinitionResponse>(
            guardedValue,
            (value) => ObjectStatusConditionDefinitionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
