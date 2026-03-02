// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'country_response.dart';

/// Result data returned by listGlobalRulestackCountries.
class ListGlobalRulestackCountriesResult {
  /// next link
  final String? nextLink;
  /// List of countries
  final List<CountryResponse> value;

  /// Creates a new [ListGlobalRulestackCountriesResult].
  /// [nextLink] next link
  /// [value] List of countries
  ListGlobalRulestackCountriesResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<CountryResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListGlobalRulestackCountriesResult.fromMap(Map<String, dynamic> map) {
    return ListGlobalRulestackCountriesResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<CountryResponse>(map['value'], (value) => CountryResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

