// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule.dart';

/// Result data returned by getRules.
class GetRulesResult {
  final String eventBusName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? ruleNamePrefix;
  final List<GetRulesRule> rules;
  final String? status;

  /// Creates a new [GetRulesResult].
  /// [eventBusName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [ruleNamePrefix] Optional.
  /// [rules] Required.
  /// [status] Optional.
  GetRulesResult({
    required this.eventBusName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.ruleNamePrefix,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusName': eventBusName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'ruleNamePrefix': ?ruleNamePrefix,
      'rules': pulumi.Input.encodeList<GetRulesRule, Map<String, dynamic>>(
        rules,
        (value) => value.toMap(),
      ),
      'status': ?status,
    };
  }

  factory GetRulesResult.fromMap(Map<String, dynamic> map) {
    return GetRulesResult(
      eventBusName: map['eventBusName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      ruleNamePrefix: (() {
        final guardedValue = map['ruleNamePrefix'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      rules: pulumi.Input.decodeList<GetRulesRule>(
        map['rules']!,
        (value) => GetRulesRule.fromMap((value as Map).cast<String, dynamic>()),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
