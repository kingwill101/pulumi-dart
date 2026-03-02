// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RecordGeolocationRoutingPolicy {
  /// A two-letter continent code. See http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html for code details. Either `continent` or `country` must be specified.
  final pulumi.Input<String>? continent;
  /// A two-character country code or `*` to indicate a default resource record set.
  final pulumi.Input<String>? country;
  /// A subdivision code for a country.
  final pulumi.Input<String>? subdivision;

  /// Creates a new [RecordGeolocationRoutingPolicy].
  /// [continent] A two-letter continent code. See http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html for code details. Either `continent` or `country` must be specified.
  /// [country] A two-character country code or `*` to indicate a default resource record set.
  /// [subdivision] A subdivision code for a country.
  RecordGeolocationRoutingPolicy({
    this.continent,
    this.country,
    this.subdivision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continent': ?continent,
      'country': ?country,
      'subdivision': ?subdivision,
    };
  }

  factory RecordGeolocationRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordGeolocationRoutingPolicy(
      continent: map['continent'] == null ? null : (map['continent'] as String).input(),
      country: map['country'] == null ? null : (map['country'] as String).input(),
      subdivision: map['subdivision'] == null ? null : (map['subdivision'] as String).input(),
    );
  }
}

