// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dispatch_rules_rule.dart';

/// Result data returned by getDispatchRules.
class GetDispatchRulesResult {
  /// The name of the dispatch rule.
  final String? dispatchRuleName;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Dispatch Rule names.
  final List<String> names;
  final String? outputFile;
  /// A list of Arms Dispatch Rules. Each element contains the following attributes:
  final List<GetDispatchRulesRule> rules;

  /// Creates a new [GetDispatchRulesResult].
  /// [dispatchRuleName] The name of the dispatch rule.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Dispatch Rule names.
  /// [outputFile] Optional.
  /// [rules] A list of Arms Dispatch Rules. Each element contains the following attributes:
  GetDispatchRulesResult({
    this.dispatchRuleName,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispatchRuleName': ?dispatchRuleName,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'rules': pulumi.Input.encodeList<GetDispatchRulesRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetDispatchRulesResult.fromMap(Map<String, dynamic> map) {
    return GetDispatchRulesResult(
      dispatchRuleName: map['dispatchRuleName'] == null ? null : map['dispatchRuleName']! as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      rules: pulumi.Input.decodeList<GetDispatchRulesRule>(map['rules'], (value) => GetDispatchRulesRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

