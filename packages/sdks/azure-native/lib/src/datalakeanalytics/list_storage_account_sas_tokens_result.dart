// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sas_token_information_response.dart';

/// Result data returned by listStorageAccountSasTokens.
class ListStorageAccountSasTokensResult {
  /// The link (url) to the next page of results.
  final String? nextLink;
  /// The results of the list operation.
  final List<SasTokenInformationResponse>? value;

  /// Creates a new [ListStorageAccountSasTokensResult].
  /// [nextLink] The link (url) to the next page of results.
  /// [value] The results of the list operation.
  const ListStorageAccountSasTokensResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<SasTokenInformationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListStorageAccountSasTokensResult.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountSasTokensResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SasTokenInformationResponse>(guardedValue, (value) => SasTokenInformationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
