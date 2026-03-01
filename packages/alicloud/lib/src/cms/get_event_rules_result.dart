// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_rules_rule.dart';

/// Result data returned by getEventRules.
class GetEventRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? namePrefix;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<GetEventRulesRule> rules;
  final String? status;

  /// Creates a new [GetEventRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [namePrefix] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [rules] Required.
  /// [status] Optional.
  GetEventRulesResult({
    required this.id,
    required this.ids,
    this.namePrefix,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.rules,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'namePrefix': ?namePrefix,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'rules': pulumi.Input.encodeList<GetEventRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetEventRulesResult.fromMap(Map<String, dynamic> map) {
    return GetEventRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      namePrefix: map['namePrefix'] == null ? null : map['namePrefix'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      rules: pulumi.Input.decodeList<GetEventRulesRule>(map['rules'], (value) => GetEventRulesRule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

