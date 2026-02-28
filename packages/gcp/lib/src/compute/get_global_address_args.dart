// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_global_address_get_global_address_args_doc}
/// Arguments for getGlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_get_global_address_get_global_address_args_doc}
class GetGlobalAddressArgs {
  /// A unique name for the resource, required by GCE.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetGlobalAddressArgs].
  /// [name] A unique name for the resource, required by GCE.
  /// [project] The project in which the resource belongs. If it
  GetGlobalAddressArgs({
    required String name,
    String? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetGlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

