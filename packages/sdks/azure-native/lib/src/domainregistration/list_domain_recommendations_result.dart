// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'name_identifier_response.dart';

/// Result data returned by listDomainRecommendations.
class ListDomainRecommendationsResult {
  /// Link to next page of resources.
  final String? nextLink;
  /// Collection of resources.
  final List<NameIdentifierResponse>? value;

  /// Creates a new [ListDomainRecommendationsResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  const ListDomainRecommendationsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<NameIdentifierResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListDomainRecommendationsResult.fromMap(Map<String, dynamic> map) {
    return ListDomainRecommendationsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NameIdentifierResponse>(guardedValue, (value) => NameIdentifierResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
