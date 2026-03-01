// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policies_policy.dart';

/// Result data returned by getPolicies.
class GetPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of policy IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of policy names.
  final List<String> names;
  final String? outputFile;
  /// A list of policies. Each element contains the following attributes:
  final List<GetPoliciesPolicy> policies;
  /// The type of the policy.
  final String? policyType;

  /// Creates a new [GetPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of policy IDs.
  /// [nameRegex] Optional.
  /// [names] A list of policy names.
  /// [outputFile] Optional.
  /// [policies] A list of policies. Each element contains the following attributes:
  /// [policyType] The type of the policy.
  GetPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'policyType': ?policyType,
    };
  }

  factory GetPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      policies: pulumi.Input.decodeList<GetPoliciesPolicy>(map['policies'], (value) => GetPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      policyType: map['policyType'] == null ? null : map['policyType'] as String,
    );
  }
}

