// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_block_custom_response_response_header.dart';

class GetManagedRuleGroupRuleActionBlockCustomResponse {
  final pulumi.Input<String> customResponseBodyKey;
  final pulumi.Input<int> responseCode;
  final pulumi.Input<
    List<GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader>
  >
  responseHeaders;

  /// Creates a new [GetManagedRuleGroupRuleActionBlockCustomResponse].
  /// [customResponseBodyKey] Required.
  /// [responseCode] Required.
  /// [responseHeaders] Required.
  GetManagedRuleGroupRuleActionBlockCustomResponse({
    required this.customResponseBodyKey,
    required this.responseCode,
    required this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders':
          pulumi.Input.mapInputValue<
            List<
              GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader
            >,
            List<Map<String, dynamic>>
          >(
            responseHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetManagedRuleGroupRuleActionBlockCustomResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedRuleGroupRuleActionBlockCustomResponse(
      customResponseBodyKey: pulumi.Input.fromValue(
        map['customResponseBodyKey'] as String,
      ),
      responseCode: pulumi.Input.fromValue(map['responseCode'] as int),
      responseHeaders: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader
        >(
          map['responseHeaders']!,
          (value) =>
              GetManagedRuleGroupRuleActionBlockCustomResponseResponseHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
