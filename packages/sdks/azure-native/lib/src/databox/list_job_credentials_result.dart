// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unencrypted_credentials_response.dart';

/// Result data returned by listJobCredentials.
class ListJobCredentialsResult {
  /// Link for the next set of unencrypted credentials.
  final String? nextLink;
  /// List of unencrypted credentials.
  final List<UnencryptedCredentialsResponse>? value;

  /// Creates a new [ListJobCredentialsResult].
  /// [nextLink] Link for the next set of unencrypted credentials.
  /// [value] List of unencrypted credentials.
  const ListJobCredentialsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<UnencryptedCredentialsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListJobCredentialsResult.fromMap(Map<String, dynamic> map) {
    return ListJobCredentialsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<UnencryptedCredentialsResponse>(guardedValue, (value) => UnencryptedCredentialsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

