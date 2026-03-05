// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheRule resources.
class CacheRuleState {
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
  /// Cache Rule Id.
  final pulumi.Input<int>? cacheRuleId;
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
  final pulumi.Input<String>? siteId;
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

  /// Creates a new [CacheRuleState].
  /// [additionalCacheablePorts] Enable caching on specified ports. Value range: 8880, 2052, 2082, 2086, 2095, 2053, 2083, 2087, 2096
  /// [browserCacheMode] Browser cache mode. Possible values:
  /// [browserCacheTtl] Browser cache expiration time in seconds.
  /// [bypassCache] Set the bypass cache mode. Possible values:
  /// [cacheDeceptionArmor] Cache deception protection. Used to defend against web cache deception attacks, only the cache content that passes the validation will be cached. Value range:
  /// [cacheReserveEligibility] Cache retention eligibility. Used to control whether user requests bypass the cache retention node when returning to the origin. Possible values:
  /// [cacheRuleId] Cache Rule Id.
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
  CacheRuleState({
    this.additionalCacheablePorts,
    this.browserCacheMode,
    this.browserCacheTtl,
    this.bypassCache,
    this.cacheDeceptionArmor,
    this.cacheReserveEligibility,
    this.cacheRuleId,
    this.checkPresenceCookie,
    this.checkPresenceHeader,
    this.edgeCacheMode,
    this.edgeCacheTtl,
    this.edgeStatusCodeCacheTtl,
    this.includeCookie,
    this.includeHeader,
    this.queryString,
    this.queryStringMode,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.serveStale,
    this.siteId,
    this.siteVersion,
    this.sortQueryStringForCache,
    this.userDeviceType,
    this.userGeo,
    this.userLanguage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheablePorts': ?additionalCacheablePorts,
      'browserCacheMode': ?browserCacheMode,
      'browserCacheTtl': ?browserCacheTtl,
      'bypassCache': ?bypassCache,
      'cacheDeceptionArmor': ?cacheDeceptionArmor,
      'cacheReserveEligibility': ?cacheReserveEligibility,
      'cacheRuleId': ?cacheRuleId,
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
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
      'sortQueryStringForCache': ?sortQueryStringForCache,
      'userDeviceType': ?userDeviceType,
      'userGeo': ?userGeo,
      'userLanguage': ?userLanguage,
    };
  }

  factory CacheRuleState.fromMap(Map<String, dynamic> map) {
    return CacheRuleState(
      additionalCacheablePorts: (() { final guardedValue = map['additionalCacheablePorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserCacheMode: (() { final guardedValue = map['browserCacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserCacheTtl: (() { final guardedValue = map['browserCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bypassCache: (() { final guardedValue = map['bypassCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheDeceptionArmor: (() { final guardedValue = map['cacheDeceptionArmor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheReserveEligibility: (() { final guardedValue = map['cacheReserveEligibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheRuleId: (() { final guardedValue = map['cacheRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      checkPresenceCookie: (() { final guardedValue = map['checkPresenceCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkPresenceHeader: (() { final guardedValue = map['checkPresenceHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeCacheMode: (() { final guardedValue = map['edgeCacheMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeCacheTtl: (() { final guardedValue = map['edgeCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeStatusCodeCacheTtl: (() { final guardedValue = map['edgeStatusCodeCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeCookie: (() { final guardedValue = map['includeCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeHeader: (() { final guardedValue = map['includeHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryStringMode: (() { final guardedValue = map['queryStringMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      serveStale: (() { final guardedValue = map['serveStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sortQueryStringForCache: (() { final guardedValue = map['sortQueryStringForCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDeviceType: (() { final guardedValue = map['userDeviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userGeo: (() { final guardedValue = map['userGeo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userLanguage: (() { final guardedValue = map['userLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

