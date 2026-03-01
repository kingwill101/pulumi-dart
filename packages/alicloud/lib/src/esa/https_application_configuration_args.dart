// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_https_application_configuration_https_application_configuration_args_doc}
/// The set of arguments for HttpsApplicationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_esa_https_application_configuration_https_application_configuration_args_doc}
class HttpsApplicationConfigurationArgs {
  /// Function switch, default off. Value range:
  final pulumi.Input<String>? altSvc;
  /// Alt-Svc whether The header contains the clear parameter. This parameter is disabled by default. Value range:
  final pulumi.Input<String>? altSvcClear;
  /// The effective time of the Alt-Svc, in seconds. The default value is 86400 seconds.
  final pulumi.Input<String>? altSvcMa;
  /// Alt-Svc whether The header contains the persist parameter. This parameter is disabled by default. Value range:
  final pulumi.Input<String>? altSvcPersist;
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
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [HttpsApplicationConfigurationArgs].
  /// [altSvc] Function switch, default off. Value range:
  /// [altSvcClear] Alt-Svc whether The header contains the clear parameter. This parameter is disabled by default. Value range:
  /// [altSvcMa] The effective time of the Alt-Svc, in seconds. The default value is 86400 seconds.
  /// [altSvcPersist] Alt-Svc whether The header contains the persist parameter. This parameter is disabled by default. Value range:
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
  HttpsApplicationConfigurationArgs({
    String? altSvc,
    String? altSvcClear,
    String? altSvcMa,
    String? altSvcPersist,
    String? hsts,
    String? hstsIncludeSubdomains,
    String? hstsMaxAge,
    String? hstsPreload,
    String? httpsForce,
    String? httpsForceCode,
    String? httpsNoSniDeny,
    String? httpsSniVerify,
    String? httpsSniWhitelist,
    String? rule,
    String? ruleEnable,
    String? ruleName,
    int? sequence,
    required String siteId,
    int? siteVersion,
  }) :
      altSvc = pulumi.Input.asOptionalInput<String>(altSvc),
      altSvcClear = pulumi.Input.asOptionalInput<String>(altSvcClear),
      altSvcMa = pulumi.Input.asOptionalInput<String>(altSvcMa),
      altSvcPersist = pulumi.Input.asOptionalInput<String>(altSvcPersist),
      hsts = pulumi.Input.asOptionalInput<String>(hsts),
      hstsIncludeSubdomains = pulumi.Input.asOptionalInput<String>(hstsIncludeSubdomains),
      hstsMaxAge = pulumi.Input.asOptionalInput<String>(hstsMaxAge),
      hstsPreload = pulumi.Input.asOptionalInput<String>(hstsPreload),
      httpsForce = pulumi.Input.asOptionalInput<String>(httpsForce),
      httpsForceCode = pulumi.Input.asOptionalInput<String>(httpsForceCode),
      httpsNoSniDeny = pulumi.Input.asOptionalInput<String>(httpsNoSniDeny),
      httpsSniVerify = pulumi.Input.asOptionalInput<String>(httpsSniVerify),
      httpsSniWhitelist = pulumi.Input.asOptionalInput<String>(httpsSniWhitelist),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'altSvc': ?altSvc,
      'altSvcClear': ?altSvcClear,
      'altSvcMa': ?altSvcMa,
      'altSvcPersist': ?altSvcPersist,
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
      'siteId': siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory HttpsApplicationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return HttpsApplicationConfigurationArgs(
      altSvc: map['altSvc'] == null ? null : map['altSvc'] as String,
      altSvcClear: map['altSvcClear'] == null ? null : map['altSvcClear'] as String,
      altSvcMa: map['altSvcMa'] == null ? null : map['altSvcMa'] as String,
      altSvcPersist: map['altSvcPersist'] == null ? null : map['altSvcPersist'] as String,
      hsts: map['hsts'] == null ? null : map['hsts'] as String,
      hstsIncludeSubdomains: map['hstsIncludeSubdomains'] == null ? null : map['hstsIncludeSubdomains'] as String,
      hstsMaxAge: map['hstsMaxAge'] == null ? null : map['hstsMaxAge'] as String,
      hstsPreload: map['hstsPreload'] == null ? null : map['hstsPreload'] as String,
      httpsForce: map['httpsForce'] == null ? null : map['httpsForce'] as String,
      httpsForceCode: map['httpsForceCode'] == null ? null : map['httpsForceCode'] as String,
      httpsNoSniDeny: map['httpsNoSniDeny'] == null ? null : map['httpsNoSniDeny'] as String,
      httpsSniVerify: map['httpsSniVerify'] == null ? null : map['httpsSniVerify'] as String,
      httpsSniWhitelist: map['httpsSniWhitelist'] == null ? null : map['httpsSniWhitelist'] as String,
      rule: map['rule'] == null ? null : map['rule'] as String,
      ruleEnable: map['ruleEnable'] == null ? null : map['ruleEnable'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
    );
  }
}

