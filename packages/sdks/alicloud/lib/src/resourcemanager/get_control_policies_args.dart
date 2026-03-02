// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_get_control_policies_get_control_policies_args_doc}
/// Arguments for getControlPolicies.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_get_control_policies_get_control_policies_args_doc}
class GetControlPoliciesArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Control Policy IDs.
  final pulumi.Input<List<String>>? ids;
  /// The language. Valid value `zh-CN`, `en`, and `ja`. Default value `zh-CN`.
  final pulumi.Input<String>? language;
  /// A regex string to filter results by Control Policy name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The policy type of control policy. Valid values `System` and `Custom`.
  final pulumi.Input<String>? policyType;

  /// Creates a new [GetControlPoliciesArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of Control Policy IDs.
  /// [language] The language. Valid value `zh-CN`, `en`, and `ja`. Default value `zh-CN`.
  /// [nameRegex] A regex string to filter results by Control Policy name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [policyType] The policy type of control policy. Valid values `System` and `Custom`.
  GetControlPoliciesArgs({
    this.enableDetails,
    this.ids,
    this.language,
    this.nameRegex,
    this.outputFile,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'language': ?language,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'policyType': ?policyType,
    };
  }

  factory GetControlPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetControlPoliciesArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      language: map['language'] == null ? null : (map['language'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType'] as String).input(),
    );
  }
}

