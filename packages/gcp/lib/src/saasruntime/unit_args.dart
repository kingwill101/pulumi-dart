// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unit_maintenance.dart';

/// {@template pulumi_saasruntime_unit_unit_args_doc}
/// The set of arguments for Unit.
/// {@endtemplate}
/// {@macro pulumi_saasruntime_unit_unit_args_doc}
class UnitArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// Captures requested directives for performing future maintenance on the
  /// unit. This includes a request for the unit to skip maintenance for a period
  /// of time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  /// Structure is documented below.
  final pulumi.Input<UnitMaintenance>? maintenance;

  /// Indicates whether the Unit life cycle is controlled
  /// by the user or by the system.
  /// Immutable once created.
  /// Possible values:
  /// MANAGEMENT_MODE_USER
  /// MANAGEMENT_MODE_SYSTEM
  final pulumi.Input<String>? managementMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Reference to the Saas Tenant resource this unit belongs to. This for
  /// example informs the maintenance policies to use for scheduling future
  /// updates on a unit. (optional and immutable once created)
  final pulumi.Input<String>? tenant;

  /// The ID value for the new unit.
  final pulumi.Input<String> unitId;

  /// Reference to the UnitKind this Unit belongs to. Immutable once set.
  final pulumi.Input<String>? unitKind;

  /// Creates a new [UnitArgs].
  /// [annotations] Annotations is an unstructured key-value map stored with a resource that
  /// [labels] The labels on the resource, which can be used for categorization.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [maintenance] Captures requested directives for performing future maintenance on the
  /// [managementMode] Indicates whether the Unit life cycle is controlled
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] Reference to the Saas Tenant resource this unit belongs to. This for
  /// [unitId] The ID value for the new unit.
  /// [unitKind] Reference to the UnitKind this Unit belongs to. Immutable once set.
  UnitArgs({
    Map<String, String>? annotations,
    Map<String, String>? labels,
    required String location,
    UnitMaintenance? maintenance,
    String? managementMode,
    String? project,
    String? tenant,
    required String unitId,
    String? unitKind,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       maintenance = pulumi.Input.asOptionalInput<UnitMaintenance>(maintenance),
       managementMode = pulumi.Input.asOptionalInput<String>(managementMode),
       project = pulumi.Input.asOptionalInput<String>(project),
       tenant = pulumi.Input.asOptionalInput<String>(tenant),
       unitId = pulumi.Input.asInput<String>(unitId),
       unitKind = pulumi.Input.asOptionalInput<String>(unitKind);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'labels': ?labels,
      'location': location,
      'maintenance':
          ?pulumi.Input.mapOptionalInputValue<
            UnitMaintenance,
            Map<String, dynamic>
          >(maintenance, (value) => value.toMap()),
      'managementMode': ?managementMode,
      'project': ?project,
      'tenant': ?tenant,
      'unitId': unitId,
      'unitKind': ?unitKind,
    };
  }

  factory UnitArgs.fromMap(Map<String, dynamic> map) {
    return UnitArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      maintenance: map['maintenance'] == null
          ? null
          : UnitMaintenance.fromMap(
              (map['maintenance'] as Map).cast<String, dynamic>(),
            ),
      managementMode: map['managementMode'] == null
          ? null
          : map['managementMode'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tenant: map['tenant'] == null ? null : map['tenant'] as String,
      unitId: map['unitId'] as String,
      unitKind: map['unitKind'] == null ? null : map['unitKind'] as String,
    );
  }
}
