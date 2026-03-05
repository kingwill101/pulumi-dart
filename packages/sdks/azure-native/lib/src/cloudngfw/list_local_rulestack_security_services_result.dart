// ignore_for_file: unused_element, unnecessary_cast

import 'security_services_type_list_response.dart';

/// Result data returned by listLocalRulestackSecurityServices.
class ListLocalRulestackSecurityServicesResult {
  /// next link
  final String? nextLink;
  /// response value
  final SecurityServicesTypeListResponse value;

  /// Creates a new [ListLocalRulestackSecurityServicesResult].
  /// [nextLink] next link
  /// [value] response value
  ListLocalRulestackSecurityServicesResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': value.toMap(),
    };
  }

  factory ListLocalRulestackSecurityServicesResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackSecurityServicesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: SecurityServicesTypeListResponse.fromMap((map['value']! as Map).cast<String, dynamic>()),
    );
  }
}

