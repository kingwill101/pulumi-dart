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
  const HttpsApplicationConfigurationState({
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
      altSvc: (() { final guardedValue = map['altSvc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      altSvcClear: (() { final guardedValue = map['altSvcClear']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      altSvcMa: (() { final guardedValue = map['altSvcMa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      altSvcPersist: (() { final guardedValue = map['altSvcPersist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      hsts: (() { final guardedValue = map['hsts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hstsIncludeSubdomains: (() { final guardedValue = map['hstsIncludeSubdomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hstsMaxAge: (() { final guardedValue = map['hstsMaxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hstsPreload: (() { final guardedValue = map['hstsPreload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsForce: (() { final guardedValue = map['httpsForce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsForceCode: (() { final guardedValue = map['httpsForceCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsNoSniDeny: (() { final guardedValue = map['httpsNoSniDeny']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsSniVerify: (() { final guardedValue = map['httpsSniVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsSniWhitelist: (() { final guardedValue = map['httpsSniWhitelist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

