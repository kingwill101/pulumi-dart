// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HttpsApplicationConfiguration resources.
class HttpsApplicationConfigurationState {
  /// Function switch, default off. Value range:
  final pulumi.Input<String>? altSvc;
  /// Alt-Svc whether The header contains the clear parameter. This parameter is disabled by default. Value range:
  final pulumi.Input<String>? altSvcClear;
  /// The effective time of the Alt-Svc, in seconds. The default value is 86400 seconds.
  final pulumi.Input<String>? altSvcMa;
  /// Alt-Svc whether The header contains the persist parameter. This parameter is disabled by default. Value range:
  final pulumi.Input<String>? altSvcPersist;
  /// Config Id
  final pulumi.Input<int>? configId;
  /// Whether to enable HSTS. It is disabled by default. Value range:
  final pulumi.Input<String>? hsts;
  /// Whether to include subdomains in HSTS is disabled by default. Value range:
  final pulumi.Input<String>? hstsIncludeSubdomains;
  /// The expiration time of HSTS, in seconds.
  final pulumi.Input<String>? hstsMaxAge;
  /// Whether to enable HSTS preloading. It is disabled by default. Value range:
  final pulumi.Input<String>? hstsPreload;
  /// Whether to enable forced HTTPS. It is disabled by default. Value range:
  final pulumi.Input<String>? httpsForce;
  /// Forced HTTPS jump status code, value range:
  final pulumi.Input<String>? httpsForceCode;
  /// Whether to enable to reject TLS handshake requests without SNI. This parameter is disabled by default. Value range:
  final pulumi.Input<String>? httpsNoSniDeny;
  /// Whether to enable SNI verification. It is disabled by default. Value range:
  final pulumi.Input<String>? httpsSniVerify;
  /// Specifies the list of allowed SNI whitelists, separated by spaces.
  final pulumi.Input<String>? httpsSniWhitelist;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// The site ID, which can be obtained by calling the ListSites API.
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpsApplicationConfigurationState].
  /// [altSvc] Function switch, default off. Value range:
  /// [altSvcClear] Alt-Svc whether The header contains the clear parameter. This parameter is disabled by default. Value range:
  /// [altSvcMa] The effective time of the Alt-Svc, in seconds. The default value is 86400 seconds.
  /// [altSvcPersist] Alt-Svc whether The header contains the persist parameter. This parameter is disabled by default. Value range:
  /// [configId] Config Id
  /// [hsts] Whether to enable HSTS. It is disabled by default. Value range:
  /// [hstsIncludeSubdomains] Whether to include subdomains in HSTS is disabled by default. Value range:
  /// [hstsMaxAge] The expiration time of HSTS, in seconds.
  /// [hstsPreload] Whether to enable HSTS preloading. It is disabled by default. Value range:
  /// [httpsForce] Whether to enable forced HTTPS. It is disabled by default. Value range:
  /// [httpsForceCode] Forced HTTPS jump status code, value range:
  /// [httpsNoSniDeny] Whether to enable to reject TLS handshake requests without SNI. This parameter is disabled by default. Value range:
  /// [httpsSniVerify] Whether to enable SNI verification. It is disabled by default. Value range:
  /// [httpsSniWhitelist] Specifies the list of allowed SNI whitelists, separated by spaces.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  HttpsApplicationConfigurationState({
    this.altSvc,
    this.altSvcClear,
    this.altSvcMa,
    this.altSvcPersist,
    this.configId,
    this.hsts,
    this.hstsIncludeSubdomains,
    this.hstsMaxAge,
    this.hstsPreload,
    this.httpsForce,
    this.httpsForceCode,
    this.httpsNoSniDeny,
    this.httpsSniVerify,
    this.httpsSniWhitelist,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'altSvc': ?altSvc,
      'altSvcClear': ?altSvcClear,
      'altSvcMa': ?altSvcMa,
      'altSvcPersist': ?altSvcPersist,
      'configId': ?configId,
      'hsts': ?hsts,
      'hstsIncludeSubdomains': ?hstsIncludeSubdomains,
      'hstsMaxAge': ?hstsMaxAge,
      'hstsPreload': ?hstsPreload,
      'httpsForce': ?httpsForce,
      'httpsForceCode': ?httpsForceCode,
      'httpsNoSniDeny': ?httpsNoSniDeny,
      'httpsSniVerify': ?httpsSniVerify,
      'httpsSniWhitelist': ?httpsSniWhitelist,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpsApplicationConfigurationState.fromMap(Map<String, dynamic> map) {
    return HttpsApplicationConfigurationState(
      altSvc: map['altSvc'] == null ? null : (map['altSvc']! as String).input(),
      altSvcClear: map['altSvcClear'] == null ? null : (map['altSvcClear']! as String).input(),
      altSvcMa: map['altSvcMa'] == null ? null : (map['altSvcMa']! as String).input(),
      altSvcPersist: map['altSvcPersist'] == null ? null : (map['altSvcPersist']! as String).input(),
      configId: map['configId'] == null ? null : (map['configId']! as int).input(),
      hsts: map['hsts'] == null ? null : (map['hsts']! as String).input(),
      hstsIncludeSubdomains: map['hstsIncludeSubdomains'] == null ? null : (map['hstsIncludeSubdomains']! as String).input(),
      hstsMaxAge: map['hstsMaxAge'] == null ? null : (map['hstsMaxAge']! as String).input(),
      hstsPreload: map['hstsPreload'] == null ? null : (map['hstsPreload']! as String).input(),
      httpsForce: map['httpsForce'] == null ? null : (map['httpsForce']! as String).input(),
      httpsForceCode: map['httpsForceCode'] == null ? null : (map['httpsForceCode']! as String).input(),
      httpsNoSniDeny: map['httpsNoSniDeny'] == null ? null : (map['httpsNoSniDeny']! as String).input(),
      httpsSniVerify: map['httpsSniVerify'] == null ? null : (map['httpsSniVerify']! as String).input(),
      httpsSniWhitelist: map['httpsSniWhitelist'] == null ? null : (map['httpsSniWhitelist']! as String).input(),
      rule: map['rule'] == null ? null : (map['rule']! as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable']! as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence']! as int).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      siteVersion: map['siteVersion'] == null ? null : (map['siteVersion']! as int).input(),
    );
  }
}

