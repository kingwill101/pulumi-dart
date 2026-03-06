// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_system_security_policies_policy.dart';

/// Result data returned by getSystemSecurityPolicies.
class GetSystemSecurityPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of System Security Policy IDs.
  final List<String> ids;
  final String? outputFile;
  /// A list of ALB Security Policies. Each element contains the following attributes:
  final List<GetSystemSecurityPoliciesPolicy> policies;
  final Map<String, String>? tags;

  /// Creates a new [GetSystemSecurityPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of System Security Policy IDs.
  /// [outputFile] Optional.
  /// [policies] A list of ALB Security Policies. Each element contains the following attributes:
  /// [tags] Optional.
  const GetSystemSecurityPoliciesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.policies,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetSystemSecurityPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetSystemSecurityPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetSystemSecurityPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetSystemSecurityPoliciesPolicy>(map['policies']!, (value) => GetSystemSecurityPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

