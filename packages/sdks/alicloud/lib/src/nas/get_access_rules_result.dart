// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rules_rule.dart';

/// Result data returned by getAccessRules.
class GetAccessRulesResult {
  final String accessGroupName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of rule IDs, Each element set to `access_rule_id` (Each element formats as `&lt;access_group_name&gt;:&lt;access_rule_id&gt;` before 1.53.0).
  final List<String> ids;
  final String? outputFile;

  /// A list of AccessRules. Each element contains the following attributes:
  final List<GetAccessRulesRule> rules;

  /// RWAccess of the AccessRule.
  final String? rwAccess;

  /// SourceCidrIp of the AccessRule.
  final String? sourceCidrIp;

  /// UserAccess of the AccessRule
  final String? userAccess;

  /// Creates a new [GetAccessRulesResult].
  /// [accessGroupName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of rule IDs, Each element set to `access_rule_id` (Each element formats as `&lt;access_group_name&gt;:&lt;access_rule_id&gt;` before 1.53.0).
  /// [outputFile] Optional.
  /// [rules] A list of AccessRules. Each element contains the following attributes:
  /// [rwAccess] RWAccess of the AccessRule.
  /// [sourceCidrIp] SourceCidrIp of the AccessRule.
  /// [userAccess] UserAccess of the AccessRule
  GetAccessRulesResult({
    required this.accessGroupName,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.rules,
    this.rwAccess,
    this.sourceCidrIp,
    this.userAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupName': accessGroupName,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'rules':
          pulumi.Input.encodeList<GetAccessRulesRule, Map<String, dynamic>>(
            rules,
            (value) => value.toMap(),
          ),
      'rwAccess': ?rwAccess,
      'sourceCidrIp': ?sourceCidrIp,
      'userAccess': ?userAccess,
    };
  }

  factory GetAccessRulesResult.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesResult(
      accessGroupName: map['accessGroupName'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      rules: pulumi.Input.decodeList<GetAccessRulesRule>(
        map['rules']!,
        (value) =>
            GetAccessRulesRule.fromMap((value as Map).cast<String, dynamic>()),
      ),
      rwAccess: (() {
        final guardedValue = map['rwAccess'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourceCidrIp: (() {
        final guardedValue = map['sourceCidrIp'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      userAccess: (() {
        final guardedValue = map['userAccess'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
