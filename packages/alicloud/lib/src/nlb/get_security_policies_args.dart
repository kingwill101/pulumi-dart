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
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? resourceGroupId,
    List<String>? securityPolicyNames,
    String? status,
    Map<String, String>? tags,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityPolicyNames = pulumi.Input.asOptionalInput<List<String>>(securityPolicyNames),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityPolicyNames: map['securityPolicyNames'] == null ? null : (map['securityPolicyNames'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

