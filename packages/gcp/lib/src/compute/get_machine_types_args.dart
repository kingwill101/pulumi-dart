// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_machine_types_get_machine_types_args_doc}
/// Arguments for getMachineTypes.
/// {@endtemplate}
/// {@macro pulumi_compute_get_machine_types_get_machine_types_args_doc}
class GetMachineTypesArgs {
  /// A filter expression that filters machine types listed in the response.
  final pulumi.Input<String>? filter;

  /// Project from which to list available zones. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  /// Zone from which to list machine types.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetMachineTypesArgs].
  /// [filter] A filter expression that filters machine types listed in the response.
  /// [project] Project from which to list available zones. Defaults to project declared in the provider.
  /// [zone] Zone from which to list machine types.
  GetMachineTypesArgs({String? filter, String? project, String? zone})
    : filter = pulumi.Input.asOptionalInput<String>(filter),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetMachineTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesArgs(
      filter: map['filter'] == null ? null : map['filter'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
