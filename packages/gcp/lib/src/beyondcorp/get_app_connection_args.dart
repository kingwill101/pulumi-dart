// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_get_app_connection_get_app_connection_args_doc}
/// Arguments for getAppConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_get_app_connection_get_app_connection_args_doc}
class GetAppConnectionArgs {
  /// The name of the App Connection.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region in which the resource belongs. If it
  /// is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAppConnectionArgs].
  /// [name] The name of the App Connection.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetAppConnectionArgs({required String name, String? project, String? region})
    : name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
