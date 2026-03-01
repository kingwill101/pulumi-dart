// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_edge_cache_origin_iam_policy_args_doc}
/// Arguments for getEdgeCacheOriginIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_edge_cache_origin_iam_policy_args_doc}
class GetEdgeCacheOriginIamPolicyArgs {
  final pulumi.Input<String> edgeCacheOriginId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEdgeCacheOriginIamPolicyArgs].
  /// [edgeCacheOriginId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEdgeCacheOriginIamPolicyArgs({
    required String edgeCacheOriginId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : edgeCacheOriginId = pulumi.Input.asInput<String>(edgeCacheOriginId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeCacheOriginId': edgeCacheOriginId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEdgeCacheOriginIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheOriginIamPolicyArgs(
      edgeCacheOriginId: map['edgeCacheOriginId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
