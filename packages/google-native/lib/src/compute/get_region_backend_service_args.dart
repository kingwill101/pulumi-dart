// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_region_backend_service_args_doc}
/// Arguments for getRegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_region_backend_service_args_doc}
class GetRegionBackendServiceArgs {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionBackendServiceArgs].
  /// [backendService] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionBackendServiceArgs({
    required String backendService,
    String? project,
    required String region,
  }) : backendService = pulumi.Input.asInput<String>(backendService),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendService': backendService,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionBackendServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceArgs(
      backendService: map['backendService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
