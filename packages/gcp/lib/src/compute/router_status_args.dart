// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_router_status_router_status_args_doc}
/// Arguments for routerStatus.
/// {@endtemplate}
/// {@macro pulumi_compute_router_status_router_status_args_doc}
class RouterStatusArgs {
  /// The name of the router.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource
  /// belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region this router has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;

  /// Creates a new [RouterStatusArgs].
  /// [name] The name of the router.
  /// [project] The ID of the project in which the resource
  /// [region] The region this router has been created in. If
  RouterStatusArgs({
    required String name,
    String? project,
    String? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory RouterStatusArgs.fromMap(Map<String, dynamic> map) {
    return RouterStatusArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

