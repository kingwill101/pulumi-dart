// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_get_security_policies_get_security_policies_args_doc}
/// Arguments for getSecurityPolicies.
/// {@endtemplate}
/// {@macro pulumi_alb_get_security_policies_get_security_policies_args_doc}
class GetSecurityPoliciesArgs {
  /// A list of Security Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Security Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The security policy ids.
  final pulumi.Input<List<String>>? securityPolicyIds;
  /// The name of the resource.
  final pulumi.Input<String>? securityPolicyName;
  /// The status of the resource. Valid values : `Available`, `Configuring`.
  final pulumi.Input<String>? status;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetSecurityPoliciesArgs].
  /// [ids] A list of Security Policy IDs.
  /// [nameRegex] A regex string to filter results by Security Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyIds] The security policy ids.
  /// [securityPolicyName] The name of the resource.
  /// [status] The status of the resource. Valid values : `Available`, `Configuring`.
  /// [tags] Optional.
  GetSecurityPoliciesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.securityPolicyIds,
    this.securityPolicyName,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'securityPolicyIds': ?securityPolicyIds,
      'securityPolicyName': ?securityPolicyName,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetSecurityPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicyIds: (() { final guardedValue = map['securityPolicyIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityPolicyName: (() { final guardedValue = map['securityPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

