// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_web_region_backend_service_iam_policy_get_web_region_backend_service_iam_policy_args_doc}
/// Arguments for getWebRegionBackendServiceIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iap_get_web_region_backend_service_iam_policy_get_web_region_backend_service_iam_policy_args_doc}
class GetWebRegionBackendServiceIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? region;
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> webRegionBackendService;

  /// Creates a new [GetWebRegionBackendServiceIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [webRegionBackendService] Used to find the parent resource to bind the IAM policy to
  GetWebRegionBackendServiceIamPolicyArgs({
    String? project,
    String? region,
    required String webRegionBackendService,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      webRegionBackendService = pulumi.Input.asInput<String>(webRegionBackendService);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'region': ?region,
      'webRegionBackendService': webRegionBackendService,
    };
  }

  factory GetWebRegionBackendServiceIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebRegionBackendServiceIamPolicyArgs(
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      webRegionBackendService: map['webRegionBackendService'] as String,
    );
  }
}

