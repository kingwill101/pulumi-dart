// ignore_for_file: unused_element, unnecessary_cast

import 'workteam_worker_access_configuration_s3_presign_iam_policy_constraints.dart';

class WorkteamWorkerAccessConfigurationS3Presign {
  /// Use this parameter to specify the allowed request source. Possible sources are either SourceIp or VpcSourceIp. see IAM Policy Constraints details below.
  final WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints?
      iamPolicyConstraints;

  /// Creates a new [WorkteamWorkerAccessConfigurationS3Presign].
  /// [iamPolicyConstraints] Use this parameter to specify the allowed request source. Possible sources are either SourceIp or VpcSourceIp. see IAM Policy Constraints details below.
  WorkteamWorkerAccessConfigurationS3Presign({
    this.iamPolicyConstraints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final iamPolicyConstraintsValue = iamPolicyConstraints;
    if (iamPolicyConstraintsValue != null) {
      map['iamPolicyConstraints'] = iamPolicyConstraintsValue.toMap();
    }
    return map;
  }

  factory WorkteamWorkerAccessConfigurationS3Presign.fromMap(
      Map<String, dynamic> map) {
    return WorkteamWorkerAccessConfigurationS3Presign(
      iamPolicyConstraints: map['iamPolicyConstraints'] == null
          ? null
          : WorkteamWorkerAccessConfigurationS3PresignIamPolicyConstraints
              .fromMap(
                  (map['iamPolicyConstraints'] as Map).cast<String, dynamic>()),
    );
  }
}
