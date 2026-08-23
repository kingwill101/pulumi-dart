// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_token_minimal_response.dart';

/// Result data returned by listHostPoolRegistrationTokens.
class ListHostPoolRegistrationTokensResult {
  /// Link to the next page of results.
  final String nextLink;
  /// List of RegistrationToken definitions.
  final List<RegistrationTokenMinimalResponse>? value;

  /// Creates a new [ListHostPoolRegistrationTokensResult].
  /// [nextLink] Link to the next page of results.
  /// [value] List of RegistrationToken definitions.
  const ListHostPoolRegistrationTokensResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<RegistrationTokenMinimalResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListHostPoolRegistrationTokensResult.fromMap(Map<String, dynamic> map) {
    return ListHostPoolRegistrationTokensResult(
      nextLink: map['nextLink'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistrationTokenMinimalResponse>(guardedValue, (value) => RegistrationTokenMinimalResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
