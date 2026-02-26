// ignore_for_file: unused_element, unnecessary_cast

class RecordGeolocationRoutingPolicy {
  /// A two-letter continent code. See http://docs.aws.amazon.com/Route53/latest/APIReference/API_GetGeoLocation.html for code details. Either <span pulumi-lang-nodejs="`continent`" pulumi-lang-dotnet="`Continent`" pulumi-lang-go="`continent`" pulumi-lang-python="`continent`" pulumi-lang-yaml="`continent`" pulumi-lang-java="`continent`">`continent`</span> or <span pulumi-lang-nodejs="`country`" pulumi-lang-dotnet="`Country`" pulumi-lang-go="`country`" pulumi-lang-python="`country`" pulumi-lang-yaml="`country`" pulumi-lang-java="`country`">`country`</span> must be specified.
  final String? continent;

  /// A two-character country code or `*` to indicate a default resource record set.
  final String? country;

  /// A subdivision code for a country.
  final String? subdivision;

  RecordGeolocationRoutingPolicy({
    this.continent,
    this.country,
    this.subdivision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final continentValue = continent;
    if (continentValue != null) {
      map['continent'] = continentValue;
    }
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
    }
    final subdivisionValue = subdivision;
    if (subdivisionValue != null) {
      map['subdivision'] = subdivisionValue;
    }
    return map;
  }

  factory RecordGeolocationRoutingPolicy.fromMap(Map<String, dynamic> map) {
    return RecordGeolocationRoutingPolicy(
      continent: map['continent'] == null ? null : map['continent'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      subdivision:
          map['subdivision'] == null ? null : map['subdivision'] as String,
    );
  }
}
