// ignore_for_file: unused_element, unnecessary_cast

import '../authz_policy_http_rule_to_operation_header_set_header_value/authz_policy_http_rule_to_operation_header_set_header_value.dart';

class AuthzPolicyHttpRuleToOperationHeaderSetHeader {
  /// Specifies the name of the header in the request.
  final String? name;

  /// Specifies how the header match will be performed.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleToOperationHeaderSetHeaderValue? value;

  AuthzPolicyHttpRuleToOperationHeaderSetHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory AuthzPolicyHttpRuleToOperationHeaderSetHeader.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationHeaderSetHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null
          ? null
          : AuthzPolicyHttpRuleToOperationHeaderSetHeaderValue.fromMap(
              (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
