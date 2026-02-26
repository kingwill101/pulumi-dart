// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../authz_policy_http_rule_to_operation_header_set_header/authz_policy_http_rule_to_operation_header_set_header.dart';

class AuthzPolicyHttpRuleToOperationHeaderSet {
  /// A list of headers to match against in http header. The match can be one of exact, prefix, suffix, or contains (substring match). The match follows AND semantics which means all the headers must match. Matches are always case sensitive unless the ignoreCase is set. Limited to 10 matches.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToOperationHeaderSetHeader>? headers;

  AuthzPolicyHttpRuleToOperationHeaderSet({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = Input.encodeList<
          AuthzPolicyHttpRuleToOperationHeaderSetHeader,
          Map<String, dynamic>>(headersValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthzPolicyHttpRuleToOperationHeaderSet.fromMap(
      Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperationHeaderSet(
      headers: map['headers'] == null
          ? null
          : Input.decodeList<AuthzPolicyHttpRuleToOperationHeaderSetHeader>(
              map['headers'],
              (value) => AuthzPolicyHttpRuleToOperationHeaderSetHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
