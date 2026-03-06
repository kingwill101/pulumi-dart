// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GeoLocation
class GeoLocation {
  /// &lt;p&gt;The two-letter code for the continent.&lt;/p&gt; &lt;p&gt;Amazon Route 53 supports the following continent codes:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AF&lt;/b&gt;: Africa&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AN&lt;/b&gt;: Antarctica&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AS&lt;/b&gt;: Asia&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EU&lt;/b&gt;: Europe&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;OC&lt;/b&gt;: Oceania&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NA&lt;/b&gt;: North America&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;SA&lt;/b&gt;: South America&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Constraint: Specifying &lt;code&gt;ContinentCode&lt;/code&gt; with either &lt;code&gt;CountryCode&lt;/code&gt; or &lt;code&gt;SubdivisionCode&lt;/code&gt; returns an &lt;code&gt;InvalidInput&lt;/code&gt; error.&lt;/p&gt;
  final pulumi.Input<String>? continentCode;
  /// &lt;p&gt;For geolocation resource record sets, the two-letter code for a country.&lt;/p&gt; &lt;p&gt;Amazon Route 53 uses the two-letter country codes that are specified in &lt;a href='https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2'&gt;ISO standard 3166-1 alpha-2&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Route 53 also supports the country code &lt;b&gt;UA&lt;/b&gt; for Ukraine.&lt;/p&gt;
  final pulumi.Input<String>? countryCode;
  /// &lt;p&gt;For geolocation resource record sets, the two-letter code for a state of the United States. Route 53 doesn't support any other values for &lt;code&gt;SubdivisionCode&lt;/code&gt;. For a list of state abbreviations, see &lt;a href='https://pe.usps.com/text/pub28/28apb.htm'&gt;Appendix B: Two–Letter State and Possession Abbreviations&lt;/a&gt; on the United States Postal Service website. &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;subdivisioncode&lt;/code&gt;, you must also specify &lt;code&gt;US&lt;/code&gt; for &lt;code&gt;CountryCode&lt;/code&gt;. &lt;/p&gt;
  final pulumi.Input<String>? subdivisionCode;

  /// Creates a new [GeoLocation].
  /// [continentCode] &lt;p&gt;The two-letter code for the continent.&lt;/p&gt; &lt;p&gt;Amazon Route 53 supports the following continent codes:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AF&lt;/b&gt;: Africa&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AN&lt;/b&gt;: Antarctica&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AS&lt;/b&gt;: Asia&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EU&lt;/b&gt;: Europe&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;OC&lt;/b&gt;: Oceania&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;NA&lt;/b&gt;: North America&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;SA&lt;/b&gt;: South America&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Constraint: Specifying &lt;code&gt;ContinentCode&lt;/code&gt; with either &lt;code&gt;CountryCode&lt;/code&gt; or &lt;code&gt;SubdivisionCode&lt;/code&gt; returns an &lt;code&gt;InvalidInput&lt;/code&gt; error.&lt;/p&gt;
  /// [countryCode] &lt;p&gt;For geolocation resource record sets, the two-letter code for a country.&lt;/p&gt; &lt;p&gt;Amazon Route 53 uses the two-letter country codes that are specified in &lt;a href='https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2'&gt;ISO standard 3166-1 alpha-2&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Route 53 also supports the country code &lt;b&gt;UA&lt;/b&gt; for Ukraine.&lt;/p&gt;
  /// [subdivisionCode] &lt;p&gt;For geolocation resource record sets, the two-letter code for a state of the United States. Route 53 doesn't support any other values for &lt;code&gt;SubdivisionCode&lt;/code&gt;. For a list of state abbreviations, see &lt;a href='https://pe.usps.com/text/pub28/28apb.htm'&gt;Appendix B: Two–Letter State and Possession Abbreviations&lt;/a&gt; on the United States Postal Service website. &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;subdivisioncode&lt;/code&gt;, you must also specify &lt;code&gt;US&lt;/code&gt; for &lt;code&gt;CountryCode&lt;/code&gt;. &lt;/p&gt;
  const GeoLocation({
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
      continentCode: (() { final guardedValue = map['continentCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      countryCode: (() { final guardedValue = map['countryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdivisionCode: (() { final guardedValue = map['subdivisionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

