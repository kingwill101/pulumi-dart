// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_access_signature_authorization_rule_access_rights_description_response.dart';

/// Result data returned by listIotDpsResourceKeys.
class ListIotDpsResourceKeysResult {
  /// The next link.
  final String? nextLink;
  /// The list of shared access policies.
  final List<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>? value;

  /// Creates a new [ListIotDpsResourceKeysResult].
  /// [nextLink] The next link.
  /// [value] The list of shared access policies.
  const ListIotDpsResourceKeysResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListIotDpsResourceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListIotDpsResourceKeysResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse>(guardedValue, (value) => SharedAccessSignatureAuthorizationRuleAccessRightsDescriptionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
