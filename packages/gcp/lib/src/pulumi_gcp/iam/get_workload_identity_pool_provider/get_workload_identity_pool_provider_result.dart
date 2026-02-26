// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_workload_identity_pool_provider_aw/get_workload_identity_pool_provider_aw.dart';
import '../get_workload_identity_pool_provider_oidc/get_workload_identity_pool_provider_oidc.dart';
import '../get_workload_identity_pool_provider_saml/get_workload_identity_pool_provider_saml.dart';
import '../get_workload_identity_pool_provider_x509/get_workload_identity_pool_provider_x509.dart';

/// Result data returned by getWorkloadIdentityPoolProvider.
class GetWorkloadIdentityPoolProviderResult {
  final String attributeCondition;
  final Map<String, String> attributeMapping;
  final List<GetWorkloadIdentityPoolProviderAw> aws;
  final String description;
  final bool disabled;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final List<GetWorkloadIdentityPoolProviderOidc> oidcs;
  final String? project;
  final List<GetWorkloadIdentityPoolProviderSaml> samls;
  final String state;
  final String workloadIdentityPoolId;
  final String workloadIdentityPoolProviderId;
  final List<GetWorkloadIdentityPoolProviderX509> x509s;

  GetWorkloadIdentityPoolProviderResult({
    required this.attributeCondition,
    required this.attributeMapping,
    required this.aws,
    required this.description,
    required this.disabled,
    required this.displayName,
    required this.id,
    required this.name,
    required this.oidcs,
    this.project,
    required this.samls,
    required this.state,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderId,
    required this.x509s,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeCondition'] = attributeCondition;
    map['attributeMapping'] = attributeMapping;
    map['aws'] = Input.encodeList<GetWorkloadIdentityPoolProviderAw,
        Map<String, dynamic>>(aws, (value) => value.toMap());
    map['description'] = description;
    map['disabled'] = disabled;
    map['displayName'] = displayName;
    map['id'] = id;
    map['name'] = name;
    map['oidcs'] = Input.encodeList<GetWorkloadIdentityPoolProviderOidc,
        Map<String, dynamic>>(oidcs, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['samls'] = Input.encodeList<GetWorkloadIdentityPoolProviderSaml,
        Map<String, dynamic>>(samls, (value) => value.toMap());
    map['state'] = state;
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolProviderId'] = workloadIdentityPoolProviderId;
    map['x509s'] = Input.encodeList<GetWorkloadIdentityPoolProviderX509,
        Map<String, dynamic>>(x509s, (value) => value.toMap());
    return map;
  }

  factory GetWorkloadIdentityPoolProviderResult.fromMap(
      Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderResult(
      attributeCondition: map['attributeCondition'] as String,
      attributeMapping: (map['attributeMapping'] as Map).cast<String, String>(),
      aws: Input.decodeList<GetWorkloadIdentityPoolProviderAw>(
          map['aws'],
          (value) => GetWorkloadIdentityPoolProviderAw.fromMap(
              (value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      oidcs: Input.decodeList<GetWorkloadIdentityPoolProviderOidc>(
          map['oidcs'],
          (value) => GetWorkloadIdentityPoolProviderOidc.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      samls: Input.decodeList<GetWorkloadIdentityPoolProviderSaml>(
          map['samls'],
          (value) => GetWorkloadIdentityPoolProviderSaml.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
      workloadIdentityPoolProviderId:
          map['workloadIdentityPoolProviderId'] as String,
      x509s: Input.decodeList<GetWorkloadIdentityPoolProviderX509>(
          map['x509s'],
          (value) => GetWorkloadIdentityPoolProviderX509.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
