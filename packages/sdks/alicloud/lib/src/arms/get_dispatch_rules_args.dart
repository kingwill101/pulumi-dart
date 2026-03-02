// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_dispatch_rules_get_dispatch_rules_args_doc}
/// Arguments for getDispatchRules.
/// {@endtemplate}
/// {@macro pulumi_arms_get_dispatch_rules_get_dispatch_rules_args_doc}
class GetDispatchRulesArgs {
  /// The name of the dispatch rule.
  final pulumi.Input<String>? dispatchRuleName;
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of dispatch rule id.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Dispatch Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetDispatchRulesArgs].
  /// [dispatchRuleName] The name of the dispatch rule.
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of dispatch rule id.
  /// [nameRegex] A regex string to filter results by Dispatch Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetDispatchRulesArgs({
    this.dispatchRuleName,
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchRuleName': ?dispatchRuleName,
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetDispatchRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesArgs(
      dispatchRuleName: map['dispatchRuleName'] == null ? null : (map['dispatchRuleName']! as String).input(),
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
    );
  }
}

