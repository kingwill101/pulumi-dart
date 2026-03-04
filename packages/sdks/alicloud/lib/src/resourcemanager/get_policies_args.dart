// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_policies_get_policies_args_doc}
/// Arguments for getPolicies.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_policies_get_policies_args_doc}
class GetPoliciesArgs {
  /// A list of Resource Manager Policy IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by policy name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The type of the policy. If you do not specify this parameter, the system lists all types of policies. Valid values: `Custom` and `System`.
  final pulumi.Input<String>? policyType;

  /// Creates a new [GetPoliciesArgs].
  /// [ids] A list of Resource Manager Policy IDs.
  /// [nameRegex] A regex string to filter results by policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyType] The type of the policy. If you do not specify this parameter, the system lists all types of policies. Valid values: `Custom` and `System`.
  GetPoliciesArgs({this.ids, this.nameRegex, this.outputFile, this.policyType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'policyType': ?policyType,
    };
  }

  factory GetPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyType: (() {
        final guardedValue = map['policyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
