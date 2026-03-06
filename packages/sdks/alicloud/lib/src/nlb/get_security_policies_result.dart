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
  final List<String>? securityPolicyNames;
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
  /// [securityPolicyNames] Optional.
  /// [status] Optional.
  /// [tags] Optional.
  const GetSecurityPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.resourceGroupId,
    this.securityPolicyNames,
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
      'securityPolicyNames': ?securityPolicyNames,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSecurityPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetSecurityPoliciesPolicy>(map['policies']!, (value) => GetSecurityPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicyNames: (() { final guardedValue = map['securityPolicyNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

