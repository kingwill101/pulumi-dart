// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../unit_maintenance/unit_maintenance.dart';

/// The set of arguments for Unit.
class UnitArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// Captures requested directives for performing future maintenance on the
  /// unit. This includes a request for the unit to skip maintenance for a period
  /// of time and remain pinned to its current release as well as controls for
  /// postponing maintenance scheduled in future.
  /// Structure is documented below.
  final Input<UnitMaintenance>? maintenance;

  /// Indicates whether the Unit life cycle is controlled
  /// by the user or by the system.
  /// Immutable once created.
  /// Possible values:
  /// MANAGEMENT_MODE_USER
  /// MANAGEMENT_MODE_SYSTEM
  final Input<String>? managementMode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Reference to the Saas Tenant resource this unit belongs to. This for
  /// example informs the maintenance policies to use for scheduling future
  /// updates on a unit. (optional and immutable once created)
  final Input<String>? tenant;

  /// The ID value for the new unit.
  final Input<String> unitId;

  /// Reference to the UnitKind this Unit belongs to. Immutable once set.
  final Input<String>? unitKind;

  UnitArgs({
    this.annotations,
    this.labels,
    required this.location,
    this.maintenance,
    this.managementMode,
    this.project,
    this.tenant,
    required this.unitId,
    this.unitKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final maintenanceValue = maintenance;
    if (maintenanceValue != null) {
      map['maintenance'] =
          Input.mapOptionalInputValue<UnitMaintenance, Map<String, dynamic>>(
              maintenanceValue, (value) => value.toMap());
    }
    final managementModeValue = managementMode;
    if (managementModeValue != null) {
      map['managementMode'] = managementModeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final tenantValue = tenant;
    if (tenantValue != null) {
      map['tenant'] = tenantValue;
    }
    map['unitId'] = unitId;
    final unitKindValue = unitKind;
    if (unitKindValue != null) {
      map['unitKind'] = unitKindValue;
    }
    return map;
  }

  factory UnitArgs.fromMap(Map<String, dynamic> map) {
    return UnitArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      maintenance: Input.asOptionalInput<UnitMaintenance>(map['maintenance']),
      managementMode: Input.asOptionalInput<String>(map['managementMode']),
      project: Input.asOptionalInput<String>(map['project']),
      tenant: Input.asOptionalInput<String>(map['tenant']),
      unitId: Input.asInput<String>(map['unitId']),
      unitKind: Input.asOptionalInput<String>(map['unitKind']),
    );
  }
}
