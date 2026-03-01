// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HttpsBasicConfiguration resources.
class HttpsBasicConfigurationState {
  /// Custom cipher suite, indicating the specific encryption algorithm selected when CiphersuiteGroup is set to custom.
  final pulumi.Input<String>? ciphersuite;
  /// Cipher suite group. Default is all cipher suites. Possible values:
  /// - all: All cipher suites.
  /// - strict: Strong cipher suites.
  /// - custom: Custom cipher suites.
  final pulumi.Input<String>? ciphersuiteGroup;
  /// ConfigId of the configuration, which can be obtained by calling the [ListHttpsBasicConfigurations](https://www.alibabacloud.com/help/en/doc-detail/2867470.html) interface.
  final pulumi.Input<int>? configId;
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
  final pulumi.Input<String>? siteId;
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

  /// Creates a new [HttpsBasicConfigurationState].
  /// [ciphersuite] Custom cipher suite, indicating the specific encryption algorithm selected when CiphersuiteGroup is set to custom.
  /// [ciphersuiteGroup] Cipher suite group. Default is all cipher suites. Possible values:
  /// [configId] ConfigId of the configuration, which can be obtained by calling the [ListHttpsBasicConfigurations](https://www.alibabacloud.com/help/en/doc-detail/2867470.html) interface.
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
  HttpsBasicConfigurationState({
    pulumi.Output<String>? ciphersuite,
    pulumi.Output<String>? ciphersuiteGroup,
    pulumi.Output<int>? configId,
    pulumi.Output<String>? http2,
    pulumi.Output<String>? http3,
    pulumi.Output<String>? https,
    pulumi.Output<String>? ocspStapling,
    pulumi.Output<String>? rule,
    pulumi.Output<String>? ruleEnable,
    pulumi.Output<String>? ruleName,
    pulumi.Output<int>? sequence,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? tls10,
    pulumi.Output<String>? tls11,
    pulumi.Output<String>? tls12,
    pulumi.Output<String>? tls13,
  }) :
      ciphersuite = pulumi.Input.asOptionalInput<String>(ciphersuite),
      ciphersuiteGroup = pulumi.Input.asOptionalInput<String>(ciphersuiteGroup),
      configId = pulumi.Input.asOptionalInput<int>(configId),
      http2 = pulumi.Input.asOptionalInput<String>(http2),
      http3 = pulumi.Input.asOptionalInput<String>(http3),
      https = pulumi.Input.asOptionalInput<String>(https),
      ocspStapling = pulumi.Input.asOptionalInput<String>(ocspStapling),
      rule = pulumi.Input.asOptionalInput<String>(rule),
      ruleEnable = pulumi.Input.asOptionalInput<String>(ruleEnable),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      sequence = pulumi.Input.asOptionalInput<int>(sequence),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      tls10 = pulumi.Input.asOptionalInput<String>(tls10),
      tls11 = pulumi.Input.asOptionalInput<String>(tls11),
      tls12 = pulumi.Input.asOptionalInput<String>(tls12),
      tls13 = pulumi.Input.asOptionalInput<String>(tls13);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphersuite': ?ciphersuite,
      'ciphersuiteGroup': ?ciphersuiteGroup,
      'configId': ?configId,
      'http2': ?http2,
      'http3': ?http3,
      'https': ?https,
      'ocspStapling': ?ocspStapling,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': ?siteId,
      'tls10': ?tls10,
      'tls11': ?tls11,
      'tls12': ?tls12,
      'tls13': ?tls13,
    };
  }

  factory HttpsBasicConfigurationState.fromMap(Map<String, dynamic> map) {
    return HttpsBasicConfigurationState(
      ciphersuite: map['ciphersuite'] == null ? null : pulumi.Output.create<String>(map['ciphersuite'] as String),
      ciphersuiteGroup: map['ciphersuiteGroup'] == null ? null : pulumi.Output.create<String>(map['ciphersuiteGroup'] as String),
      configId: map['configId'] == null ? null : pulumi.Output.create<int>(map['configId'] as int),
      http2: map['http2'] == null ? null : pulumi.Output.create<String>(map['http2'] as String),
      http3: map['http3'] == null ? null : pulumi.Output.create<String>(map['http3'] as String),
      https: map['https'] == null ? null : pulumi.Output.create<String>(map['https'] as String),
      ocspStapling: map['ocspStapling'] == null ? null : pulumi.Output.create<String>(map['ocspStapling'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<String>(map['rule'] as String),
      ruleEnable: map['ruleEnable'] == null ? null : pulumi.Output.create<String>(map['ruleEnable'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      sequence: map['sequence'] == null ? null : pulumi.Output.create<int>(map['sequence'] as int),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      tls10: map['tls10'] == null ? null : pulumi.Output.create<String>(map['tls10'] as String),
      tls11: map['tls11'] == null ? null : pulumi.Output.create<String>(map['tls11'] as String),
      tls12: map['tls12'] == null ? null : pulumi.Output.create<String>(map['tls12'] as String),
      tls13: map['tls13'] == null ? null : pulumi.Output.create<String>(map['tls13'] as String),
    );
  }
}

