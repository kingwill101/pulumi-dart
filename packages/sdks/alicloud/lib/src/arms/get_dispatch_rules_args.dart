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
    pulumi.Output<String>? dispatchRuleName,
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      dispatchRuleName = pulumi.Input.asOptionalInput<String>(dispatchRuleName),
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      dispatchRuleName: map['dispatchRuleName'] == null ? null : pulumi.Output.create<String>(map['dispatchRuleName'] as String),
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

