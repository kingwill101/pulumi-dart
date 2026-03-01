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
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? language,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? policyType,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      language = pulumi.Input.asOptionalInput<String>(language),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      policyType = pulumi.Input.asOptionalInput<String>(policyType);

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
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
    );
  }
}

