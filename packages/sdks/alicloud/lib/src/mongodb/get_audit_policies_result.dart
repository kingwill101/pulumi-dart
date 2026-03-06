// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_audit_policies_policy.dart';

/// Result data returned by getAuditPolicies.
class GetAuditPoliciesResult {
  final String dbInstanceId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  final List<GetAuditPoliciesPolicy> policies;

  /// Creates a new [GetAuditPoliciesResult].
  /// [dbInstanceId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [policies] Required.
  const GetAuditPoliciesResult({
    required this.dbInstanceId,
    required this.id,
    this.outputFile,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'id': id,
      'outputFile': ?outputFile,
      'policies': pulumi.Input.encodeList<GetAuditPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
    };
  }

  factory GetAuditPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetAuditPoliciesResult(
      dbInstanceId: map['dbInstanceId'] as String,
      id: map['id'] as String,
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policies: pulumi.Input.decodeList<GetAuditPoliciesPolicy>(map['policies']!, (value) => GetAuditPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

