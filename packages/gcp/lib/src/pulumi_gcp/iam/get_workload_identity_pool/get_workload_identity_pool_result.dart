// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_workload_identity_pool_inline_certificate_issuance_config/get_workload_identity_pool_inline_certificate_issuance_config.dart';
import '../get_workload_identity_pool_inline_trust_config/get_workload_identity_pool_inline_trust_config.dart';

/// Result data returned by getWorkloadIdentityPool.
class GetWorkloadIdentityPoolResult {
  final String description;
  final bool disabled;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetWorkloadIdentityPoolInlineCertificateIssuanceConfig>
      inlineCertificateIssuanceConfigs;
  final List<GetWorkloadIdentityPoolInlineTrustConfig> inlineTrustConfigs;
  final String mode;
  final String name;
  final String? project;
  final String state;
  final String workloadIdentityPoolId;

  GetWorkloadIdentityPoolResult({
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.id,
    required this.inlineCertificateIssuanceConfigs,
    required this.inlineTrustConfigs,
    required this.mode,
    required this.name,
    this.project,
    required this.state,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['disabled'] = disabled;
    map['displayName'] = displayName;
    map['id'] = id;
    map['inlineCertificateIssuanceConfigs'] = Input.encodeList<
            GetWorkloadIdentityPoolInlineCertificateIssuanceConfig,
            Map<String, dynamic>>(
        inlineCertificateIssuanceConfigs, (value) => value.toMap());
    map['inlineTrustConfigs'] = Input.encodeList<
        GetWorkloadIdentityPoolInlineTrustConfig,
        Map<String, dynamic>>(inlineTrustConfigs, (value) => value.toMap());
    map['mode'] = mode;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['state'] = state;
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetWorkloadIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolResult(
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      inlineCertificateIssuanceConfigs: Input.decodeList<
              GetWorkloadIdentityPoolInlineCertificateIssuanceConfig>(
          map['inlineCertificateIssuanceConfigs'],
          (value) =>
              GetWorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inlineTrustConfigs:
          Input.decodeList<GetWorkloadIdentityPoolInlineTrustConfig>(
              map['inlineTrustConfigs'],
              (value) => GetWorkloadIdentityPoolInlineTrustConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}
