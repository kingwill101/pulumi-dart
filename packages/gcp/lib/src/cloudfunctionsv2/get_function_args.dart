// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctionsv2_get_function_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctionsv2_get_function_get_function_args_doc}
class GetFunctionArgs {
  /// The location in which the resource belongs.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// The name of a Cloud Function (2nd gen).
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionArgs].
  /// [location] The location in which the resource belongs.
  /// [name] The name of a Cloud Function (2nd gen).
  /// [project] The project in which the resource belongs. If it
  GetFunctionArgs({
    required String location,
    required String name,
    String? project,
  }) : location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
