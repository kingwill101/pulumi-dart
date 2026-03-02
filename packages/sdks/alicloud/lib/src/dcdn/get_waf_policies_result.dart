// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_policies_policy.dart';

/// Result data returned by getWafPolicies.
class GetWafPoliciesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  /// A list of Dcdn Waf Policies. Each element contains the following attributes:
  final List<GetWafPoliciesPolicy> policies;
  final String? queryArgs;
  /// The status of the resource.
  final String? status;

  /// Creates a new [GetWafPoliciesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [policies] A list of Dcdn Waf Policies. Each element contains the following attributes:
  /// [queryArgs] Optional.
  /// [status] The status of the resource.
  GetWafPoliciesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.policies,
    this.queryArgs,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetWafPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'queryArgs': ?queryArgs,
      'status': ?status,
    };
  }

  factory GetWafPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetWafPoliciesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      policies: pulumi.Input.decodeList<GetWafPoliciesPolicy>(map['policies'], (value) => GetWafPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      queryArgs: map['queryArgs'] == null ? null : map['queryArgs']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

