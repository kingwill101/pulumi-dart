// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_get_security_policies_get_security_policies_args_doc}
/// Arguments for getSecurityPolicies.
/// {@endtemplate}
/// {@macro pulumi_nlb_get_security_policies_get_security_policies_args_doc}
class GetSecurityPoliciesArgs {
  /// A list of Security Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Security Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The names of the TLS security policies.
  final pulumi.Input<List<String>>? securityPolicyNames;
  /// The status of the resource. Valid values: `Available`, `Configuring`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSecurityPoliciesArgs].
  /// [ids] A list of Security Policy IDs.
  /// [nameRegex] A regex string to filter results by Security Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyNames] The names of the TLS security policies.
  /// [status] The status of the resource. Valid values: `Available`, `Configuring`.
  /// [tags] Optional.
  GetSecurityPoliciesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.securityPolicyNames,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'securityPolicyNames': ?securityPolicyNames,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSecurityPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityPolicyNames: map['securityPolicyNames'] == null ? null : ((map['securityPolicyNames'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

