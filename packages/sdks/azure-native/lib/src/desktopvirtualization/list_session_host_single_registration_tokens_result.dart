// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_token_minimal_response.dart';

/// Result data returned by listSessionHostSingleRegistrationTokens.
class ListSessionHostSingleRegistrationTokensResult {
  /// Link to the next page of results.
  final String? nextLink;
  /// List of RegistrationToken definitions.
  final List<RegistrationTokenMinimalResponse>? value;

  /// Creates a new [ListSessionHostSingleRegistrationTokensResult].
  /// [nextLink] Link to the next page of results.
  /// [value] List of RegistrationToken definitions.
  const ListSessionHostSingleRegistrationTokensResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<RegistrationTokenMinimalResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSessionHostSingleRegistrationTokensResult.fromMap(Map<String, dynamic> map) {
    return ListSessionHostSingleRegistrationTokensResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistrationTokenMinimalResponse>(guardedValue, (value) => RegistrationTokenMinimalResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
