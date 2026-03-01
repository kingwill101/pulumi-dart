// ignore_for_file: unused_element, unnecessary_cast

class SecurityActionConditionConfig {
  /// A list of accessTokens. Limit 1000 per action.
  final List<String>? accessTokens;

  /// A list of API keys. Limit 1000 per action.
  final List<String>? apiKeys;

  /// A list of API Products. Limit 1000 per action.
  final List<String>? apiProducts;

  /// A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/wiki/Autonomous_system_(Internet)
  /// This uses int64 instead of uint32 because of https://linter.aip.dev/141/forbidden-types.
  final List<String>? asns;

  /// A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper,
  /// OAuth Abuser, Robot Abuser, TorListRule, Advanced Anomaly Detection, Advanced API Scraper,
  /// Search Engine Crawlers, Public Clouds, Public Cloud AWS, Public Cloud Azure, and Public Cloud Google.
  final List<String>? botReasons;

  /// A list of developer apps. Limit 1000 per action.
  final List<String>? developerApps;

  /// A list of developers. Limit 1000 per action.
  final List<String>? developers;

  /// Act only on particular HTTP methods. E.g. A read-only API can block POST/PUT/DELETE methods.
  /// Accepted values are: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE and PATCH.
  final List<String>? httpMethods;

  /// A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  final List<String>? ipAddressRanges;

  /// A list of countries/region codes to act on, e.g. US. This follows https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
  final List<String>? regionCodes;

  /// A list of user agents to deny. We look for exact matches. Limit 50 per action.
  final List<String>? userAgents;

  /// Creates a new [SecurityActionConditionConfig].
  /// [accessTokens] A list of accessTokens. Limit 1000 per action.
  /// [apiKeys] A list of API keys. Limit 1000 per action.
  /// [apiProducts] A list of API Products. Limit 1000 per action.
  /// [asns] A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/wiki/Autonomous_system_(Internet)
  /// [botReasons] A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper,
  /// [developerApps] A list of developer apps. Limit 1000 per action.
  /// [developers] A list of developers. Limit 1000 per action.
  /// [httpMethods] Act only on particular HTTP methods. E.g. A read-only API can block POST/PUT/DELETE methods.
  /// [ipAddressRanges] A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  /// [regionCodes] A list of countries/region codes to act on, e.g. US. This follows https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
  /// [userAgents] A list of user agents to deny. We look for exact matches. Limit 50 per action.
  SecurityActionConditionConfig({
    this.accessTokens,
    this.apiKeys,
    this.apiProducts,
    this.asns,
    this.botReasons,
    this.developerApps,
    this.developers,
    this.httpMethods,
    this.ipAddressRanges,
    this.regionCodes,
    this.userAgents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens': ?accessTokens,
      'apiKeys': ?apiKeys,
      'apiProducts': ?apiProducts,
      'asns': ?asns,
      'botReasons': ?botReasons,
      'developerApps': ?developerApps,
      'developers': ?developers,
      'httpMethods': ?httpMethods,
      'ipAddressRanges': ?ipAddressRanges,
      'regionCodes': ?regionCodes,
      'userAgents': ?userAgents,
    };
  }

  factory SecurityActionConditionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityActionConditionConfig(
      accessTokens: map['accessTokens'] == null
          ? null
          : (map['accessTokens'] as List).cast<String>(),
      apiKeys: map['apiKeys'] == null
          ? null
          : (map['apiKeys'] as List).cast<String>(),
      apiProducts: map['apiProducts'] == null
          ? null
          : (map['apiProducts'] as List).cast<String>(),
      asns: map['asns'] == null ? null : (map['asns'] as List).cast<String>(),
      botReasons: map['botReasons'] == null
          ? null
          : (map['botReasons'] as List).cast<String>(),
      developerApps: map['developerApps'] == null
          ? null
          : (map['developerApps'] as List).cast<String>(),
      developers: map['developers'] == null
          ? null
          : (map['developers'] as List).cast<String>(),
      httpMethods: map['httpMethods'] == null
          ? null
          : (map['httpMethods'] as List).cast<String>(),
      ipAddressRanges: map['ipAddressRanges'] == null
          ? null
          : (map['ipAddressRanges'] as List).cast<String>(),
      regionCodes: map['regionCodes'] == null
          ? null
          : (map['regionCodes'] as List).cast<String>(),
      userAgents: map['userAgents'] == null
          ? null
          : (map['userAgents'] as List).cast<String>(),
    );
  }
}
