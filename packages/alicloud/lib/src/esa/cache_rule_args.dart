// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_cache_rule_cache_rule_args_doc}
/// The set of arguments for CacheRule.
/// {@endtemplate}
/// {@macro pulumi_esa_cache_rule_cache_rule_args_doc}
class CacheRuleArgs {
  /// Enable caching on specified ports. Value range: 8880, 2052, 2082, 2086, 2095, 2053, 2083, 2087, 2096
  final pulumi.Input<String>? additionalCacheablePorts;
  /// Browser cache mode. Possible values:
  final pulumi.Input<String>? browserCacheMode;
  /// Browser cache expiration time in seconds.
  final pulumi.Input<String>? browserCacheTtl;
  /// Set the bypass cache mode. Possible values:
  final pulumi.Input<String>? bypassCache;
  /// Cache deception protection. Used to defend against web cache deception attacks, only the cache content that passes the validation will be cached. Value range:
  final pulumi.Input<String>? cacheDeceptionArmor;
  /// Cache retention eligibility. Used to control whether user requests bypass the cache retention node when returning to the origin. Possible values:
  final pulumi.Input<String>? cacheReserveEligibility;
  /// When generating the cache key, check if the cookie exists. If it does, add the cookie name (case-insensitive) to the cache key. Multiple cookie names are supported, separated by spaces.
  final pulumi.Input<String>? checkPresenceCookie;
  /// When generating the cache key, check if the header exists. If it does, add the header name (case-insensitive) to the cache key. Multiple header names are supported, separated by spaces.
  final pulumi.Input<String>? checkPresenceHeader;
  /// Edge cache mode. Possible values:
  final pulumi.Input<String>? edgeCacheMode;
  /// Edge cache expiration time in seconds.
  final pulumi.Input<String>? edgeCacheTtl;
  /// Status code cache expiration time in seconds.
  final pulumi.Input<String>? edgeStatusCodeCacheTtl;
  /// When generating the cache key, add the specified cookie names and their values. Multiple values are supported, separated by spaces.
  final pulumi.Input<String>? includeCookie;
  /// When generating the cache key, add the specified header names and their values. Multiple values are supported, separated by spaces.
  final pulumi.Input<String>? includeHeader;
  /// Query strings to be reserved or excluded. Multiple values are supported, separated by spaces.
  final pulumi.Input<String>? queryString;
  /// The processing mode for query strings when generating the cache key. Possible values:
  final pulumi.Input<String>? queryStringMode;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true.
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\").
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// Serve stale cache. When enabled, the node can still respond to user requests with expired cached files when the origin server is unavailable. Value range:
  final pulumi.Input<String>? serveStale;
  /// The site ID, which can be obtained by calling the [ListSites] API.
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;
  /// Query string sorting, disabled by default. Possible values:
  final pulumi.Input<String>? sortQueryStringForCache;
  /// When generating the cache key, add the client device type. Possible values:
  final pulumi.Input<String>? userDeviceType;
  /// When generating the cache key, add the client's geographic location. Possible values:
  final pulumi.Input<String>? userGeo;
  /// When generating cache keys, include the client's language type. Possible values:
  final pulumi.Input<String>? userLanguage;

  /// Creates a new [CacheRuleArgs].
  /// [additionalCacheablePorts] Enable caching on specified ports. Value range: 8880, 2052, 2082, 2086, 2095, 2053, 2083, 2087, 2096
  /// [browserCacheMode] Browser cache mode. Possible values:
  /// [browserCacheTtl] Browser cache expiration time in seconds.
  /// [bypassCache] Set the bypass cache mode. Possible values:
  /// [cacheDeceptionArmor] Cache deception protection. Used to defend against web cache deception attacks, only the cache content that passes the validation will be cached. Value range:
  /// [cacheReserveEligibility] Cache retention eligibility. Used to control whether user requests bypass the cache retention node when returning to the origin. Possible values:
  /// [checkPresenceCookie] When generating the cache key, check if the cookie exists. If it does, add the cookie name (case-insensitive) to the cache key. Multiple cookie names are supported, separated by spaces.
  /// [checkPresenceHeader] When generating the cache key, check if the header exists. If it does, add the header name (case-insensitive) to the cache key. Multiple header names are supported, separated by spaces.
  /// [edgeCacheMode] Edge cache mode. Possible values:
  /// [edgeCacheTtl] Edge cache expiration time in seconds.
  /// [edgeStatusCodeCacheTtl] Status code cache expiration time in seconds.
  /// [includeCookie] When generating the cache key, add the specified cookie names and their values. Multiple values are supported, separated by spaces.
  /// [includeHeader] When generating the cache key, add the specified header names and their values. Multiple values are supported, separated by spaces.
  /// [queryString] Query strings to be reserved or excluded. Multiple values are supported, separated by spaces.
  /// [queryStringMode] The processing mode for query strings when generating the cache key. Possible values:
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [serveStale] Serve stale cache. When enabled, the node can still respond to user requests with expired cached files when the origin server is unavailable. Value range:
  /// [siteId] The site ID, which can be obtained by calling the [ListSites] API.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [sortQueryStringForCache] Query string sorting, disabled by default. Possible values:
  /// [userDeviceType] When generating the cache key, add the client device type. Possible values:
  /// [userGeo] When generating the cache key, add the client's geographic location. Possible values:
  /// [userLanguage] When generating cache keys, include the client's language type. Possible values:
  CacheRuleArgs({
    String? additionalCacheablePorts,
    String? browserCacheMode,
    String? browserCacheTtl,
    String? bypassCache,
    String? cacheDeceptionArmor,
    String? cacheReserveEligibility,
    String? checkPresenceCookie,
    String? checkPresenceHeader,
    String? edgeCacheMode,
    String? edgeCacheTtl,
    String? edgeStatusCodeCacheTtl,
    String? includeCookie,
    String? includeHeader,
    String? queryString,
    String? queryStringMode,
    String? rule,
    String? ruleEnable,
    String? ruleName,
    int? sequence,
    String? serveStale,
    required String siteId,
    int? siteVersion,
    String? sortQueryStringForCache,
    String? userDeviceType,
    String? userGeo,
    String? userLanguage,
  }) :
      additionalCacheablePorts = pulumi.Input.asOptionalInput<String>(additionalCacheablePorts),
      browserCacheMode = pulumi.Input.asOptionalInput<String>(browserCacheMode),
      browserCacheTtl = pulumi.Input.asOptionalInput<String>(browserCacheTtl),
      bypassCache = pulumi.Input.asOptionalInput<String>(bypassCache),
      cacheDeceptionArmor = pulumi.Input.asOptionalInput<String>(cacheDeceptionArmor),
      cacheReserveEligibility = pulumi.Input.asOptionalInput<String>(cacheReserveEligibility),
      checkPresenceCookie = pulumi.Input.asOptionalInput<String>(checkPresenceCookie),
      checkPresenceHeader = pulumi.Input.asOptionalInput<String>(checkPresenceHeader),
      edgeCacheMode = pulumi.Input.asOptionalInput<String>(edgeCacheMode),
      edgeCacheTtl = pulumi.Input.asOptionalInput<String>(edgeCacheTtl),
      edgeStatusCodeCacheTtl = pulumi.Input.asOptionalInput<String>(edgeStatusCodeCacheTtl),
      includeCookie = pulumi.Input.asOptionalInput<String>(includeCookie),
      includeHeader = pulumi.Input.asOptionalInput<String>(includeHeader),
      queryString = pulumi.Input.asOptionalInput<String>(queryString),
      queryStringMode = pulumi.Input.asOptionalInput<String>(queryStringMode),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      serveStale = pulumi.Input.asOptionalInput<String>(serveStale),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion),
      sortQueryStringForCache = pulumi.Input.asOptionalInput<String>(sortQueryStringForCache),
      userDeviceType = pulumi.Input.asOptionalInput<String>(userDeviceType),
      userGeo = pulumi.Input.asOptionalInput<String>(userGeo),
      userLanguage = pulumi.Input.asOptionalInput<String>(userLanguage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheablePorts': ?additionalCacheablePorts,
      'browserCacheMode': ?browserCacheMode,
      'browserCacheTtl': ?browserCacheTtl,
      'bypassCache': ?bypassCache,
      'cacheDeceptionArmor': ?cacheDeceptionArmor,
      'cacheReserveEligibility': ?cacheReserveEligibility,
      'checkPresenceCookie': ?checkPresenceCookie,
      'checkPresenceHeader': ?checkPresenceHeader,
      'edgeCacheMode': ?edgeCacheMode,
      'edgeCacheTtl': ?edgeCacheTtl,
      'edgeStatusCodeCacheTtl': ?edgeStatusCodeCacheTtl,
      'includeCookie': ?includeCookie,
      'includeHeader': ?includeHeader,
      'queryString': ?queryString,
      'queryStringMode': ?queryStringMode,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'serveStale': ?serveStale,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
      'sortQueryStringForCache': ?sortQueryStringForCache,
      'userDeviceType': ?userDeviceType,
      'userGeo': ?userGeo,
      'userLanguage': ?userLanguage,
    };
  }

  factory CacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return CacheRuleArgs(
      additionalCacheablePorts: map['additionalCacheablePorts'] == null ? null : map['additionalCacheablePorts'] as String,
      browserCacheMode: map['browserCacheMode'] == null ? null : map['browserCacheMode'] as String,
      browserCacheTtl: map['browserCacheTtl'] == null ? null : map['browserCacheTtl'] as String,
      bypassCache: map['bypassCache'] == null ? null : map['bypassCache'] as String,
      cacheDeceptionArmor: map['cacheDeceptionArmor'] == null ? null : map['cacheDeceptionArmor'] as String,
      cacheReserveEligibility: map['cacheReserveEligibility'] == null ? null : map['cacheReserveEligibility'] as String,
      checkPresenceCookie: map['checkPresenceCookie'] == null ? null : map['checkPresenceCookie'] as String,
      checkPresenceHeader: map['checkPresenceHeader'] == null ? null : map['checkPresenceHeader'] as String,
      edgeCacheMode: map['edgeCacheMode'] == null ? null : map['edgeCacheMode'] as String,
      edgeCacheTtl: map['edgeCacheTtl'] == null ? null : map['edgeCacheTtl'] as String,
      edgeStatusCodeCacheTtl: map['edgeStatusCodeCacheTtl'] == null ? null : map['edgeStatusCodeCacheTtl'] as String,
      includeCookie: map['includeCookie'] == null ? null : map['includeCookie'] as String,
      includeHeader: map['includeHeader'] == null ? null : map['includeHeader'] as String,
      queryString: map['queryString'] == null ? null : map['queryString'] as String,
      queryStringMode: map['queryStringMode'] == null ? null : map['queryStringMode'] as String,
      rule: map['rule'] == null ? null : map['rule'] as String,
      ruleEnable: map['ruleEnable'] == null ? null : map['ruleEnable'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      serveStale: map['serveStale'] == null ? null : map['serveStale'] as String,
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
      sortQueryStringForCache: map['sortQueryStringForCache'] == null ? null : map['sortQueryStringForCache'] as String,
      userDeviceType: map['userDeviceType'] == null ? null : map['userDeviceType'] as String,
      userGeo: map['userGeo'] == null ? null : map['userGeo'] as String,
      userLanguage: map['userLanguage'] == null ? null : map['userLanguage'] as String,
    );
  }
}

