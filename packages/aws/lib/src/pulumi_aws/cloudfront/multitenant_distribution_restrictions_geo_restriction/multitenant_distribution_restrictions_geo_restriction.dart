// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionRestrictionsGeoRestriction {
  /// List of ISO 3166-1-alpha-2 country codes for which you want CloudFront either to distribute your content (<span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>) or not distribute your content (<span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>). Required when <span pulumi-lang-nodejs="`restrictionType`" pulumi-lang-dotnet="`RestrictionType`" pulumi-lang-go="`restrictionType`" pulumi-lang-python="`restriction_type`" pulumi-lang-yaml="`restrictionType`" pulumi-lang-java="`restrictionType`">`restriction_type`</span> is <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span> or <span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>.
  final List<String>? items;

  /// Method to restrict distribution of your content by country. Valid values are <span pulumi-lang-nodejs="`none`" pulumi-lang-dotnet="`None`" pulumi-lang-go="`none`" pulumi-lang-python="`none`" pulumi-lang-yaml="`none`" pulumi-lang-java="`none`">`none`</span>, <span pulumi-lang-nodejs="`whitelist`" pulumi-lang-dotnet="`Whitelist`" pulumi-lang-go="`whitelist`" pulumi-lang-python="`whitelist`" pulumi-lang-yaml="`whitelist`" pulumi-lang-java="`whitelist`">`whitelist`</span>, and <span pulumi-lang-nodejs="`blacklist`" pulumi-lang-dotnet="`Blacklist`" pulumi-lang-go="`blacklist`" pulumi-lang-python="`blacklist`" pulumi-lang-yaml="`blacklist`" pulumi-lang-java="`blacklist`">`blacklist`</span>.
  final String restrictionType;

  MultitenantDistributionRestrictionsGeoRestriction({
    this.items,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    map['restrictionType'] = restrictionType;
    return map;
  }

  factory MultitenantDistributionRestrictionsGeoRestriction.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionRestrictionsGeoRestriction(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
      restrictionType: map['restrictionType'] as String,
    );
  }
}
