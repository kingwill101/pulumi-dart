// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_inline_certificate_issuance_config.dart';
import 'get_workload_identity_pool_inline_trust_config.dart';

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

  /// Creates a new [GetWorkloadIdentityPoolResult].
  /// [description] Required.
  /// [disabled] Required.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inlineCertificateIssuanceConfigs] Required.
  /// [inlineTrustConfigs] Required.
  /// [mode] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [state] Required.
  /// [workloadIdentityPoolId] Required.
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
    return <String, dynamic>{
      'description': description,
      'disabled': disabled,
      'displayName': displayName,
      'id': id,
      'inlineCertificateIssuanceConfigs':
          pulumi.Input.encodeList<
            GetWorkloadIdentityPoolInlineCertificateIssuanceConfig,
            Map<String, dynamic>
          >(inlineCertificateIssuanceConfigs, (value) => value.toMap()),
      'inlineTrustConfigs':
          pulumi.Input.encodeList<
            GetWorkloadIdentityPoolInlineTrustConfig,
            Map<String, dynamic>
          >(inlineTrustConfigs, (value) => value.toMap()),
      'mode': mode,
      'name': name,
      'project': ?project,
      'state': state,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory GetWorkloadIdentityPoolResult.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolResult(
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      inlineCertificateIssuanceConfigs:
          pulumi.Input.decodeList<
            GetWorkloadIdentityPoolInlineCertificateIssuanceConfig
          >(
            map['inlineCertificateIssuanceConfigs'],
            (value) =>
                GetWorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      inlineTrustConfigs:
          pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineTrustConfig>(
            map['inlineTrustConfigs'],
            (value) => GetWorkloadIdentityPoolInlineTrustConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      mode: map['mode'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}
