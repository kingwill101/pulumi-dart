// ignore_for_file: unused_element, unnecessary_cast

import 'security_services_type_list_response.dart';

/// Result data returned by listGlobalRulestackSecurityServices.
class ListGlobalRulestackSecurityServicesResult {
  /// next link
  final String? nextLink;
  /// response value
  final SecurityServicesTypeListResponse? value;

  /// Creates a new [ListGlobalRulestackSecurityServicesResult].
  /// [nextLink] next link
  /// [value] response value
  const ListGlobalRulestackSecurityServicesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value?.toMap(),
    };
  }

  factory ListGlobalRulestackSecurityServicesResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackSecurityServicesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return SecurityServicesTypeListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
