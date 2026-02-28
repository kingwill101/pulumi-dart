// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_migrating_vm_vmmigration_v1alpha1_args_doc}
/// Arguments for getMigratingVm.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_migrating_vm_vmmigration_v1alpha1_args_doc}
class GetMigratingVmVmmigrationV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;
  final pulumi.Input<String>? view;

  /// Creates a new [GetMigratingVmVmmigrationV1alpha1Args].
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  /// [view] Optional.
  GetMigratingVmVmmigrationV1alpha1Args({
    required String location,
    required String migratingVmId,
    String? project,
    required String sourceId,
    String? view,
  })  : location = pulumi.Input.asInput<String>(location),
        migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
        project = pulumi.Input.asOptionalInput<String>(project),
        sourceId = pulumi.Input.asInput<String>(sourceId),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['migratingVmId'] = migratingVmId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sourceId'] = sourceId;
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetMigratingVmVmmigrationV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return GetMigratingVmVmmigrationV1alpha1Args(
      location: map['location'] as String,
      migratingVmId: map['migratingVmId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sourceId: map['sourceId'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
