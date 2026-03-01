// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_rules_waf_rule.dart';

/// Result data returned by getWafRules.
class GetWafRulesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? queryArgs;
  /// A list of Waf Rule Entries. Each element contains the following attributes:
  final List<GetWafRulesWafRule> wafRules;

  /// Creates a new [GetWafRulesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [queryArgs] Optional.
  /// [wafRules] A list of Waf Rule Entries. Each element contains the following attributes:
  GetWafRulesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.queryArgs,
    required this.wafRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'queryArgs': ?queryArgs,
      'wafRules': pulumi.Input.encodeList<GetWafRulesWafRule, Map<String, dynamic>>(wafRules, (value) => value.toMap()),
    };
  }

  factory GetWafRulesResult.fromMap(Map<String, dynamic> map) {
    return GetWafRulesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      queryArgs: map['queryArgs'] == null ? null : map['queryArgs'] as String,
      wafRules: pulumi.Input.decodeList<GetWafRulesWafRule>(map['wafRules'], (value) => GetWafRulesWafRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

