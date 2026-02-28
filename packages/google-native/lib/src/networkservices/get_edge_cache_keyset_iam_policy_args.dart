// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_edge_cache_keyset_iam_policy_args_doc}
/// Arguments for getEdgeCacheKeysetIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_edge_cache_keyset_iam_policy_args_doc}
class GetEdgeCacheKeysetIamPolicyArgs {
  final pulumi.Input<String> edgeCacheKeysetId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEdgeCacheKeysetIamPolicyArgs].
  /// [edgeCacheKeysetId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEdgeCacheKeysetIamPolicyArgs({
    required String edgeCacheKeysetId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : edgeCacheKeysetId = pulumi.Input.asInput<String>(edgeCacheKeysetId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['edgeCacheKeysetId'] = edgeCacheKeysetId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEdgeCacheKeysetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeCacheKeysetIamPolicyArgs(
      edgeCacheKeysetId: map['edgeCacheKeysetId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
