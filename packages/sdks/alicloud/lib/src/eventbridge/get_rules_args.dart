// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventbridge_get_rules_get_rules_args_doc}
/// Arguments for getRules.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_get_rules_get_rules_args_doc}
class GetRulesArgs {
  /// The name of event bus.
  final pulumi.Input<String> eventBusName;

  /// A list of Rule IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Rule name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The rule name prefix.
  final pulumi.Input<String>? ruleNamePrefix;

  /// Rule status, either Enable or Disable. Valid values: `DISABLE`, `ENABLE`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetRulesArgs].
  /// [eventBusName] The name of event bus.
  /// [ids] A list of Rule IDs.
  /// [nameRegex] A regex string to filter results by Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [ruleNamePrefix] The rule name prefix.
  /// [status] Rule status, either Enable or Disable. Valid values: `DISABLE`, `ENABLE`.
  GetRulesArgs({
    required this.eventBusName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.ruleNamePrefix,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusName': eventBusName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'ruleNamePrefix': ?ruleNamePrefix,
      'status': ?status,
    };
  }

  factory GetRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesArgs(
      eventBusName: pulumi.Input.fromValue(map['eventBusName'] as String),
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
      ruleNamePrefix: (() {
        final guardedValue = map['ruleNamePrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
