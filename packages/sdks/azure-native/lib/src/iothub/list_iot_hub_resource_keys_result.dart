// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_access_signature_authorization_rule_response.dart';

/// Result data returned by listIotHubResourceKeys.
class ListIotHubResourceKeysResult {
  /// The next link.
  final String nextLink;
  /// The list of shared access policies.
  final List<SharedAccessSignatureAuthorizationRuleResponse>? value;

  /// Creates a new [ListIotHubResourceKeysResult].
  /// [nextLink] The next link.
  /// [value] The list of shared access policies.
  ListIotHubResourceKeysResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListIotHubResourceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListIotHubResourceKeysResult(
      nextLink: map['nextLink'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRuleResponse>(guardedValue, (value) => SharedAccessSignatureAuthorizationRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

