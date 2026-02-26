// ignore_for_file: unused_element, unnecessary_cast

class DistributionRestrictionsGeoRestriction {
  /// [ISO 3166-1-alpha-2 codes][4] for which you want CloudFront either to distribute your content (<span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>) or not distribute your content (<span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>). If the type is specified as <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span> an empty array can be used.
  final List<String>? locations;

  /// Method that you want to use to restrict distribution of your content by country: <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, or <span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>.
  final String restrictionType;

  DistributionRestrictionsGeoRestriction({
    this.locations,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    map['restrictionType'] = restrictionType;
    return map;
  }

  factory DistributionRestrictionsGeoRestriction.fromMap(
      Map<String, dynamic> map) {
    return DistributionRestrictionsGeoRestriction(
      locations: map['locations'] == null
          ? null
          : (map['locations'] as List).cast<String>(),
      restrictionType: map['restrictionType'] as String,
    );
  }
}
