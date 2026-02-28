// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_backend_service_compute_v1_args_doc}
/// Arguments for getRegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_backend_service_compute_v1_args_doc}
class GetRegionBackendServiceComputeV1Args {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionBackendServiceComputeV1Args].
  /// [backendService] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionBackendServiceComputeV1Args({
    required String backendService,
    String? project,
    required String region,
  })  : backendService = pulumi.Input.asInput<String>(backendService),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionBackendServiceComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceComputeV1Args(
      backendService: map['backendService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
