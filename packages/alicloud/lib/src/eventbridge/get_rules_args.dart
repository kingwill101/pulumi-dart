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
    required String eventBusName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? ruleNamePrefix,
    String? status,
  }) :
      eventBusName = pulumi.Input.asInput<String>(eventBusName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      ruleNamePrefix = pulumi.Input.asOptionalInput<String>(ruleNamePrefix),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      eventBusName: map['eventBusName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      ruleNamePrefix: map['ruleNamePrefix'] == null ? null : map['ruleNamePrefix'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

