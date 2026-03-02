// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_https_basic_configuration_https_basic_configuration_args_doc}
/// The set of arguments for HttpsBasicConfiguration.
/// {@endtemplate}
/// {@macro pulumi_esa_https_basic_configuration_https_basic_configuration_args_doc}
class HttpsBasicConfigurationArgs {
  /// Custom cipher suite, indicating the specific encryption algorithm selected when CiphersuiteGroup is set to custom.
  final pulumi.Input<String>? ciphersuite;
  /// Cipher suite group. Default is all cipher suites. Possible values:
  /// - all: All cipher suites.
  /// - strict: Strong cipher suites.
  /// - custom: Custom cipher suites.
  final pulumi.Input<String>? ciphersuiteGroup;
  /// Indicates whether HTTP2 is enabled. Default is on. Possible values:
  /// - on: Enabled.
  /// - off: Disabled.
  final pulumi.Input<String>? http2;
  /// Whether to enable HTTP3, which is enabled by default. The value can be:
  /// - on: Enabled.
  /// - off: Disabled.
  final pulumi.Input<String>? http3;
  /// Whether to enable HTTPS. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  final pulumi.Input<String>? https;
  /// Indicates whether OCSP is enabled. Default is off. Possible values:
  /// - on: Enabled.
  /// - off: Disabled.
  final pulumi.Input<String>? ocspStapling;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// -  Match all incoming requests: value set to true
  /// -  Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  final pulumi.Input<String>? rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  final pulumi.Input<String>? ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  final pulumi.Input<String>? ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  final pulumi.Input<int>? sequence;
  /// Site ID, which can be obtained by calling the ListSites interface.
  final pulumi.Input<String> siteId;
  /// Whether to enable TLS1.0. Default is disabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  final pulumi.Input<String>? tls10;
  /// Whether to enable TLS1.1. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  final pulumi.Input<String>? tls11;
  /// Whether to enable TLS1.2. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  final pulumi.Input<String>? tls12;
  /// Whether to enable TLS1.3. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  final pulumi.Input<String>? tls13;

  /// Creates a new [HttpsBasicConfigurationArgs].
  /// [ciphersuite] Custom cipher suite, indicating the specific encryption algorithm selected when CiphersuiteGroup is set to custom.
  /// [ciphersuiteGroup] Cipher suite group. Default is all cipher suites. Possible values:
  /// [http2] Indicates whether HTTP2 is enabled. Default is on. Possible values:
  /// [http3] Whether to enable HTTP3, which is enabled by default. The value can be:
  /// [https] Whether to enable HTTPS. Default is enabled. Possible values:
  /// [ocspStapling] Indicates whether OCSP is enabled. Default is off. Possible values:
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] Site ID, which can be obtained by calling the ListSites interface.
  /// [tls10] Whether to enable TLS1.0. Default is disabled. Possible values:
  /// [tls11] Whether to enable TLS1.1. Default is enabled. Possible values:
  /// [tls12] Whether to enable TLS1.2. Default is enabled. Possible values:
  /// [tls13] Whether to enable TLS1.3. Default is enabled. Possible values:
  HttpsBasicConfigurationArgs({
    this.ciphersuite,
    this.ciphersuiteGroup,
    this.http2,
    this.http3,
    this.https,
    this.ocspStapling,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    required this.siteId,
    this.tls10,
    this.tls11,
    this.tls12,
    this.tls13,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphersuite': ?ciphersuite,
      'ciphersuiteGroup': ?ciphersuiteGroup,
      'http2': ?http2,
      'http3': ?http3,
      'https': ?https,
      'ocspStapling': ?ocspStapling,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'tls10': ?tls10,
      'tls11': ?tls11,
      'tls12': ?tls12,
      'tls13': ?tls13,
    };
  }

  factory HttpsBasicConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return HttpsBasicConfigurationArgs(
      ciphersuite: map['ciphersuite'] == null ? null : (map['ciphersuite'] as String).input(),
      ciphersuiteGroup: map['ciphersuiteGroup'] == null ? null : (map['ciphersuiteGroup'] as String).input(),
      http2: map['http2'] == null ? null : (map['http2'] as String).input(),
      http3: map['http3'] == null ? null : (map['http3'] as String).input(),
      https: map['https'] == null ? null : (map['https'] as String).input(),
      ocspStapling: map['ocspStapling'] == null ? null : (map['ocspStapling'] as String).input(),
      rule: map['rule'] == null ? null : (map['rule'] as String).input(),
      ruleEnable: map['ruleEnable'] == null ? null : (map['ruleEnable'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      sequence: map['sequence'] == null ? null : (map['sequence'] as int).input(),
      siteId: (map['siteId'] as String).input(),
      tls10: map['tls10'] == null ? null : (map['tls10'] as String).input(),
      tls11: map['tls11'] == null ? null : (map['tls11'] as String).input(),
      tls12: map['tls12'] == null ? null : (map['tls12'] as String).input(),
      tls13: map['tls13'] == null ? null : (map['tls13'] as String).input(),
    );
  }
}

