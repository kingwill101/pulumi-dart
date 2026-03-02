// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_get_audit_policies_get_audit_policies_args_doc}
/// Arguments for getAuditPolicies.
/// {@endtemplate}
/// {@macro pulumi_mongodb_get_audit_policies_get_audit_policies_args_doc}
class GetAuditPoliciesArgs {
  /// The id of the db instance.
  final pulumi.Input<String> dbInstanceId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAuditPoliciesArgs].
  /// [dbInstanceId] The id of the db instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAuditPoliciesArgs({
    required this.dbInstanceId,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'outputFile': ?outputFile,
    };
  }

  factory GetAuditPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetAuditPoliciesArgs(
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

