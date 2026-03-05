// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OriginRule resources.
class OriginRuleState {
  /// Back-to-source rule configuration ID
  final pulumi.Input<int>? configId;
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
  final pulumi.Input<String>? siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  final pulumi.Input<int>? siteVersion;

  /// Creates a new [OriginRuleState].
  /// [configId] Back-to-source rule configuration ID
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
  OriginRuleState({
    this.configId,
    this.dnsRecord,
    this.follow302Enable,
    this.follow302MaxTries,
    this.follow302RetainArgs,
    this.follow302RetainHeader,
    this.follow302TargetHost,
    this.originHost,
    this.originHttpPort,
    this.originHttpsPort,
    this.originMtls,
    this.originReadTimeout,
    this.originScheme,
    this.originSni,
    this.originVerify,
    this.range,
    this.rangeChunkSize,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    this.siteId,
    this.siteVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
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
      'siteId': ?siteId,
      'siteVersion': ?siteVersion,
    };
  }

  factory OriginRuleState.fromMap(Map<String, dynamic> map) {
    return OriginRuleState(
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsRecord: (() { final guardedValue = map['dnsRecord']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      follow302Enable: (() { final guardedValue = map['follow302Enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      follow302MaxTries: (() { final guardedValue = map['follow302MaxTries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      follow302RetainArgs: (() { final guardedValue = map['follow302RetainArgs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      follow302RetainHeader: (() { final guardedValue = map['follow302RetainHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      follow302TargetHost: (() { final guardedValue = map['follow302TargetHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originHost: (() { final guardedValue = map['originHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originHttpPort: (() { final guardedValue = map['originHttpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originHttpsPort: (() { final guardedValue = map['originHttpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originMtls: (() { final guardedValue = map['originMtls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originReadTimeout: (() { final guardedValue = map['originReadTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originScheme: (() { final guardedValue = map['originScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originSni: (() { final guardedValue = map['originSni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originVerify: (() { final guardedValue = map['originVerify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rangeChunkSize: (() { final guardedValue = map['rangeChunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleEnable: (() { final guardedValue = map['ruleEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sequence: (() { final guardedValue = map['sequence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteVersion: (() { final guardedValue = map['siteVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

