// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_orgpolicy_v2_policy_spec_response.dart';

/// Similar to PolicySpec but with an extra 'launch' field for launch reference. The PolicySpec here is specific for dry-run/darklaunch.
class GoogleCloudOrgpolicyV2AlternatePolicySpecResponse {
  /// Reference to the launch that will be used while audit logging and to control the launch. Should be set only in the alternate policy.
  final String launch;
  /// Specify constraint for configurations of Google Cloud resources.
  final GoogleCloudOrgpolicyV2PolicySpecResponse spec;

  /// Creates a new [GoogleCloudOrgpolicyV2AlternatePolicySpecResponse].
  /// [launch] Reference to the launch that will be used while audit logging and to control the launch. Should be set only in the alternate policy.
  /// [spec] Specify constraint for configurations of Google Cloud resources.
  GoogleCloudOrgpolicyV2AlternatePolicySpecResponse({
    required this.launch,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launch': launch,
      'spec': spec.toMap(),
    };
  }

  factory GoogleCloudOrgpolicyV2AlternatePolicySpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudOrgpolicyV2AlternatePolicySpecResponse(
      launch: map['launch'] as String,
      spec: GoogleCloudOrgpolicyV2PolicySpecResponse.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

