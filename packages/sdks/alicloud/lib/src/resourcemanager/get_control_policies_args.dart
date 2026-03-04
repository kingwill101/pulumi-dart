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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      language: (() {
        final guardedValue = map['language'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
