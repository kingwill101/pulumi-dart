// ignore_for_file: unused_element, unnecessary_cast

import 'security_services_type_list_response.dart';

/// Result data returned by listGlobalRulestackSecurityServices.
class ListGlobalRulestackSecurityServicesResult {
  /// next link
  final String? nextLink;
  /// response value
  final SecurityServicesTypeListResponse value;

  /// Creates a new [ListGlobalRulestackSecurityServicesResult].
  /// [nextLink] next link
  /// [value] response value
  ListGlobalRulestackSecurityServicesResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value.toMap(),
    };
  }

  factory ListGlobalRulestackSecurityServicesResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackSecurityServicesResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: SecurityServicesTypeListResponse.fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}

