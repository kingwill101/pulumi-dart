// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_region_backend_service_get_region_backend_service_args_doc}
/// Arguments for getRegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_get_region_backend_service_get_region_backend_service_args_doc}
class GetRegionBackendServiceArgs {
  /// The name of the regional backend service.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region where the backend service resides.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegionBackendServiceArgs].
  /// [name] The name of the regional backend service.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region where the backend service resides.
  GetRegionBackendServiceArgs({
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

  factory GetRegionBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceArgs(
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

