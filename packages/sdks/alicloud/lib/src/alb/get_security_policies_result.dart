// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policies_policy.dart';

/// Result data returned by getSecurityPolicies.
class GetSecurityPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetSecurityPoliciesPolicy> policies;
  final String? resourceGroupId;
  final List<String>? securityPolicyIds;
  final String? securityPolicyName;
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetSecurityPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] Required.
  /// [resourceGroupId] Optional.
  /// [securityPolicyIds] Optional.
  /// [securityPolicyName] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  GetSecurityPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.resourceGroupId,
    this.securityPolicyIds,
    this.securityPolicyName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetSecurityPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'resourceGroupId': ?resourceGroupId,
      'securityPolicyIds': ?securityPolicyIds,
      'securityPolicyName': ?securityPolicyName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSecurityPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policies: pulumi.Input.decodeList<GetSecurityPoliciesPolicy>(map['policies'], (value) => GetSecurityPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      securityPolicyIds: map['securityPolicyIds'] == null ? null : (map['securityPolicyIds']! as List).cast<String>(),
      securityPolicyName: map['securityPolicyName'] == null ? null : map['securityPolicyName']! as String,
      status: map['status'] == null ? null : map['status']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
    );
  }
}

