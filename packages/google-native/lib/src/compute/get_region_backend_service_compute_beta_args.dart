// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_backend_service_compute_beta_args_doc}
/// Arguments for getRegionBackendService.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_backend_service_compute_beta_args_doc}
class GetRegionBackendServiceComputeBetaArgs {
  final pulumi.Input<String> backendService;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionBackendServiceComputeBetaArgs].
  /// [backendService] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionBackendServiceComputeBetaArgs({
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

  factory GetRegionBackendServiceComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionBackendServiceComputeBetaArgs(
      backendService: map['backendService'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}
