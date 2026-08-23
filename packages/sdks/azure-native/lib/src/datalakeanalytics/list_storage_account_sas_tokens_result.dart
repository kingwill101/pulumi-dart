// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sas_token_information_response.dart';

/// Result data returned by listStorageAccountSasTokens.
class ListStorageAccountSasTokensResult {
  /// The link (url) to the next page of results.
  final String nextLink;
  /// The results of the list operation.
  final List<SasTokenInformationResponse> value;

  /// Creates a new [ListStorageAccountSasTokensResult].
  /// [nextLink] The link (url) to the next page of results.
  /// [value] The results of the list operation.
  const ListStorageAccountSasTokensResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<SasTokenInformationResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListStorageAccountSasTokensResult.fromMap(Map<String, dynamic> map) {
    return ListStorageAccountSasTokensResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<SasTokenInformationResponse>(map['value']!, (value) => SasTokenInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
