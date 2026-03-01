// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_quota_set_v2_get_quota_set_v2_args_doc}
/// Arguments for getQuotaSetV2.
/// {@endtemplate}
/// {@macro pulumi_compute_get_quota_set_v2_get_quota_set_v2_args_doc}
class GetQuotaSetV2Args {
  /// The id of the project to retrieve the quotaset.
  final pulumi.Input<String> projectId;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetQuotaSetV2Args].
  /// [projectId] The id of the project to retrieve the quotaset.
  /// [region] The region in which to obtain the V2 Compute client.
  GetQuotaSetV2Args({
    required String projectId,
    String? region,
  }) :
      projectId = pulumi.Input.asInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'region': ?region,
    };
  }

  factory GetQuotaSetV2Args.fromMap(Map<String, dynamic> map) {
    return GetQuotaSetV2Args(
      projectId: map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

