// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'name_identifier_response.dart';

/// Result data returned by listDomainRecommendations.
class ListDomainRecommendationsResult {
  /// Link to next page of resources.
  final String nextLink;
  /// Collection of resources.
  final List<NameIdentifierResponse> value;

  /// Creates a new [ListDomainRecommendationsResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  ListDomainRecommendationsResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<NameIdentifierResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListDomainRecommendationsResult.fromMap(Map<String, dynamic> map) {
    return ListDomainRecommendationsResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<NameIdentifierResponse>(map['value']!, (value) => NameIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

