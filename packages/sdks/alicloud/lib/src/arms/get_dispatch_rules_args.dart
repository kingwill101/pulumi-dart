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
      dispatchRuleName: (() {
        final guardedValue = map['dispatchRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
    );
  }
}
