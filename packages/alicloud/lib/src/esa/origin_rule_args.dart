// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_origin_rule_origin_rule_args_doc}
/// The set of arguments for OriginRule.
/// {@endtemplate}
/// {@macro pulumi_esa_origin_rule_origin_rule_args_doc}
class OriginRuleArgs {
  /// Overwrite the DNS resolution record of the origin request.
  final pulumi.Input<String>? dnsRecord;
  /// Return Source 302 follow switch. Value range:
  final pulumi.Input<String>? follow302Enable;
  /// 302 follows the upper limit of the number of times, with a value range of [1-5].
  final pulumi.Input<String>? follow302MaxTries;
  /// Retain the original request parameter switch. Value range:
  final pulumi.Input<String>? follow302RetainArgs;
  /// Retain the original request header switch. Value range:
  final pulumi.Input<String>? follow302RetainHeader;
  /// Modify the source host after 302.
  final pulumi.Input<String>? follow302TargetHost;
  /// The HOST carried in the back-to-origin request.
  final pulumi.Input<String>? originHost;
  /// The port of the origin station accessed when the HTTP protocol is used to return to the origin.
  final pulumi.Input<String>? originHttpPort;
  /// The port of the origin station accessed when the HTTPS protocol is used to return to the origin.
  final pulumi.Input<String>? originHttpsPort;
  /// The mtls switch. Value range:
  final pulumi.Input<String>? originMtls;
  /// Read timeout interval of the source station (s).
  final pulumi.Input<String>? originReadTimeout;
  /// The protocol used by the back-to-origin request. Value range:
  final pulumi.Input<String>? originScheme;
  /// SNI carried in the back-to-origin request.
  final pulumi.Input<String>? originSni;
  /// Source station certificate verification switch. Value range:
  final pulumi.Input<String>? originVerify;
  /// Use the range sharding method to download the file from the source. Value range:
  final pulumi.Input<String>? range;
  /// range shard size.
  final pulumi.Input<String>? rangeChunkSize;
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
  /// The site ID.
  final pulumi.Input<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [OriginRuleArgs].
  /// [dnsRecord] Overwrite the DNS resolution record of the origin request.
  /// [follow302Enable] Return Source 302 follow switch. Value range:
  /// [follow302MaxTries] 302 follows the upper limit of the number of times, with a value range of [1-5].
  /// [follow302RetainArgs] Retain the original request parameter switch. Value range:
  /// [follow302RetainHeader] Retain the original request header switch. Value range:
  /// [follow302TargetHost] Modify the source host after 302.
  /// [originHost] The HOST carried in the back-to-origin request.
  /// [originHttpPort] The port of the origin station accessed when the HTTP protocol is used to return to the origin.
  /// [originHttpsPort] The port of the origin station accessed when the HTTPS protocol is used to return to the origin.
  /// [originMtls] The mtls switch. Value range:
  /// [originReadTimeout] Read timeout interval of the source station (s).
  /// [originScheme] The protocol used by the back-to-origin request. Value range:
  /// [originSni] SNI carried in the back-to-origin request.
  /// [originVerify] Source station certificate verification switch. Value range:
  /// [range] Use the range sharding method to download the file from the source. Value range:
  /// [rangeChunkSize] range shard size.
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  OriginRuleArgs({
    String? dnsRecord,
    String? follow302Enable,
    String? follow302MaxTries,
    String? follow302RetainArgs,
    String? follow302RetainHeader,
    String? follow302TargetHost,
    String? originHost,
    String? originHttpPort,
    String? originHttpsPort,
    String? originMtls,
    String? originReadTimeout,
    String? originScheme,
    String? originSni,
    String? originVerify,
    String? range,
    String? rangeChunkSize,
    String? rule,
    String? ruleEnable,
    String? ruleName,
    int? sequence,
    required String siteId,
    int? siteVersion,
  }) :
      dnsRecord = pulumi.Input.asOptionalInput<String>(dnsRecord),
      follow302Enable = pulumi.Input.asOptionalInput<String>(follow302Enable),
      follow302MaxTries = pulumi.Input.asOptionalInput<String>(follow302MaxTries),
      follow302RetainArgs = pulumi.Input.asOptionalInput<String>(follow302RetainArgs),
      follow302RetainHeader = pulumi.Input.asOptionalInput<String>(follow302RetainHeader),
      follow302TargetHost = pulumi.Input.asOptionalInput<String>(follow302TargetHost),
      originHost = pulumi.Input.asOptionalInput<String>(originHost),
      originHttpPort = pulumi.Input.asOptionalInput<String>(originHttpPort),
      originHttpsPort = pulumi.Input.asOptionalInput<String>(originHttpsPort),
      originMtls = pulumi.Input.asOptionalInput<String>(originMtls),
      originReadTimeout = pulumi.Input.asOptionalInput<String>(originReadTimeout),
      originScheme = pulumi.Input.asOptionalInput<String>(originScheme),
      originSni = pulumi.Input.asOptionalInput<String>(originSni),
      originVerify = pulumi.Input.asOptionalInput<String>(originVerify),
      range = pulumi.Input.asOptionalInput<String>(range),
      rangeChunkSize = pulumi.Input.asOptionalInput<String>(rangeChunkSize),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asInput<String>(siteId),
      siteVersion = pulumi.Input.asOptionalInput<int>(siteVersion);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsRecord': ?dnsRecord,
      'follow302Enable': ?follow302Enable,
      'follow302MaxTries': ?follow302MaxTries,
      'follow302RetainArgs': ?follow302RetainArgs,
      'follow302RetainHeader': ?follow302RetainHeader,
      'follow302TargetHost': ?follow302TargetHost,
      'originHost': ?originHost,
      'originHttpPort': ?originHttpPort,
      'originHttpsPort': ?originHttpsPort,
      'originMtls': ?originMtls,
      'originReadTimeout': ?originReadTimeout,
      'originScheme': ?originScheme,
      'originSni': ?originSni,
      'originVerify': ?originVerify,
      'range': ?range,
      'rangeChunkSize': ?rangeChunkSize,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory OriginRuleArgs.fromMap(Map<String, dynamic> map) {
    return OriginRuleArgs(
      dnsRecord: map['dnsRecord'] == null ? null : map['dnsRecord'] as String,
      follow302Enable: map['follow302Enable'] == null ? null : map['follow302Enable'] as String,
      follow302MaxTries: map['follow302MaxTries'] == null ? null : map['follow302MaxTries'] as String,
      follow302RetainArgs: map['follow302RetainArgs'] == null ? null : map['follow302RetainArgs'] as String,
      follow302RetainHeader: map['follow302RetainHeader'] == null ? null : map['follow302RetainHeader'] as String,
      follow302TargetHost: map['follow302TargetHost'] == null ? null : map['follow302TargetHost'] as String,
      originHost: map['originHost'] == null ? null : map['originHost'] as String,
      originHttpPort: map['originHttpPort'] == null ? null : map['originHttpPort'] as String,
      originHttpsPort: map['originHttpsPort'] == null ? null : map['originHttpsPort'] as String,
      originMtls: map['originMtls'] == null ? null : map['originMtls'] as String,
      originReadTimeout: map['originReadTimeout'] == null ? null : map['originReadTimeout'] as String,
      originScheme: map['originScheme'] == null ? null : map['originScheme'] as String,
      originSni: map['originSni'] == null ? null : map['originSni'] as String,
      originVerify: map['originVerify'] == null ? null : map['originVerify'] as String,
      range: map['range'] == null ? null : map['range'] as String,
      rangeChunkSize: map['rangeChunkSize'] == null ? null : map['rangeChunkSize'] as String,
      rule: map['rule'] == null ? null : map['rule'] as String,
      ruleEnable: map['ruleEnable'] == null ? null : map['ruleEnable'] as String,
      ruleName: map['ruleName'] == null ? null : map['ruleName'] as String,
      sequence: map['sequence'] == null ? null : map['sequence'] as int,
      siteId: map['siteId'] as String,
      siteVersion: map['siteVersion'] == null ? null : map['siteVersion'] as int,
    );
  }
}

