// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'country_response.dart';

/// Result data returned by listLocalRulestackCountries.
class ListLocalRulestackCountriesResult {
  /// next link
  final String? nextLink;
  /// List of countries
  final List<CountryResponse>? value;

  /// Creates a new [ListLocalRulestackCountriesResult].
  /// [nextLink] next link
  /// [value] List of countries
  const ListLocalRulestackCountriesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<CountryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListLocalRulestackCountriesResult.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackCountriesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CountryResponse>(guardedValue, (value) => CountryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
