// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GeoLocation
class GeoLocation {
  /// <p>The two-letter code for the continent.</p> <p>Amazon Route 53 supports the following continent codes:</p> <ul> <li> <p> <b>AF</b>: Africa</p> </li> <li> <p> <b>AN</b>: Antarctica</p> </li> <li> <p> <b>AS</b>: Asia</p> </li> <li> <p> <b>EU</b>: Europe</p> </li> <li> <p> <b>OC</b>: Oceania</p> </li> <li> <p> <b>NA</b>: North America</p> </li> <li> <p> <b>SA</b>: South America</p> </li> </ul> <p>Constraint: Specifying <code>ContinentCode</code> with either <code>CountryCode</code> or <code>SubdivisionCode</code> returns an <code>InvalidInput</code> error.</p>
  final pulumi.Input<String>? continentCode;
  /// <p>For geolocation resource record sets, the two-letter code for a country.</p> <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href='https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2'>ISO standard 3166-1 alpha-2</a>.</p> <p>Route 53 also supports the country code <b>UA</b> for Ukraine.</p>
  final pulumi.Input<String>? countryCode;
  /// <p>For geolocation resource record sets, the two-letter code for a state of the United States. Route 53 doesn't support any other values for <code>SubdivisionCode</code>. For a list of state abbreviations, see <a href='https://pe.usps.com/text/pub28/28apb.htm'>Appendix B: Two–Letter State and Possession Abbreviations</a> on the United States Postal Service website. </p> <p>If you specify <code>subdivisioncode</code>, you must also specify <code>US</code> for <code>CountryCode</code>. </p>
  final pulumi.Input<String>? subdivisionCode;

  /// Creates a new [GeoLocation].
  /// [continentCode] <p>The two-letter code for the continent.</p> <p>Amazon Route 53 supports the following continent codes:</p> <ul> <li> <p> <b>AF</b>: Africa</p> </li> <li> <p> <b>AN</b>: Antarctica</p> </li> <li> <p> <b>AS</b>: Asia</p> </li> <li> <p> <b>EU</b>: Europe</p> </li> <li> <p> <b>OC</b>: Oceania</p> </li> <li> <p> <b>NA</b>: North America</p> </li> <li> <p> <b>SA</b>: South America</p> </li> </ul> <p>Constraint: Specifying <code>ContinentCode</code> with either <code>CountryCode</code> or <code>SubdivisionCode</code> returns an <code>InvalidInput</code> error.</p>
  /// [countryCode] <p>For geolocation resource record sets, the two-letter code for a country.</p> <p>Amazon Route 53 uses the two-letter country codes that are specified in <a href='https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2'>ISO standard 3166-1 alpha-2</a>.</p> <p>Route 53 also supports the country code <b>UA</b> for Ukraine.</p>
  /// [subdivisionCode] <p>For geolocation resource record sets, the two-letter code for a state of the United States. Route 53 doesn't support any other values for <code>SubdivisionCode</code>. For a list of state abbreviations, see <a href='https://pe.usps.com/text/pub28/28apb.htm'>Appendix B: Two–Letter State and Possession Abbreviations</a> on the United States Postal Service website. </p> <p>If you specify <code>subdivisioncode</code>, you must also specify <code>US</code> for <code>CountryCode</code>. </p>
  GeoLocation({
    this.continentCode,
    this.countryCode,
    this.subdivisionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continentCode': ?continentCode,
      'countryCode': ?countryCode,
      'subdivisionCode': ?subdivisionCode,
    };
  }

  factory GeoLocation.fromMap(Map<String, dynamic> map) {
    return GeoLocation(
      continentCode: map['continentCode'] == null ? null : (map['continentCode']! as String).input(),
      countryCode: map['countryCode'] == null ? null : (map['countryCode']! as String).input(),
      subdivisionCode: map['subdivisionCode'] == null ? null : (map['subdivisionCode']! as String).input(),
    );
  }
}

