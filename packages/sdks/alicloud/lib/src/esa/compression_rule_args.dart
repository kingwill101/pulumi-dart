// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_compression_rule_compression_rule_args_doc}
/// The set of arguments for CompressionRule.
/// {@endtemplate}
/// {@macro pulumi_esa_compression_rule_compression_rule_args_doc}
class CompressionRuleArgs {
  /// Brotli compression. Value range:
  final pulumi.Input<String>? brotli;

  /// Gzip compression. Value range:
  final pulumi.Input<String>? gzip;

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

  /// Zstd compression. Value range:
  final pulumi.Input<String>? zstd;

  /// Creates a new [CompressionRuleArgs].
  /// [brotli] Brotli compression. Value range:
  /// [gzip] Gzip compression. Value range:
  /// [rule] Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// [ruleEnable] Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// [ruleName] Rule name. When adding global configuration, this parameter does not need to be set.
  /// [sequence] The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  /// [siteId] The site ID, which can be obtained by calling the ListSites API.
  /// [siteVersion] The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  /// [zstd] Zstd compression. Value range:
  CompressionRuleArgs({
    this.brotli,
    this.gzip,
    this.rule,
    this.ruleEnable,
    this.ruleName,
    this.sequence,
    required this.siteId,
    this.siteVersion,
    this.zstd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brotli': ?brotli,
      'gzip': ?gzip,
      'rule': ?rule,
      'ruleEnable': ?ruleEnable,
      'ruleName': ?ruleName,
      'sequence': ?sequence,
      'siteId': siteId,
      'siteVersion': ?siteVersion,
      'zstd': ?zstd,
    };
  }

  factory CompressionRuleArgs.fromMap(Map<String, dynamic> map) {
    return CompressionRuleArgs(
      brotli: (() {
        final guardedValue = map['brotli'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gzip: (() {
        final guardedValue = map['gzip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rule: (() {
        final guardedValue = map['rule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleEnable: (() {
        final guardedValue = map['ruleEnable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sequence: (() {
        final guardedValue = map['sequence'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      siteVersion: (() {
        final guardedValue = map['siteVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      zstd: (() {
        final guardedValue = map['zstd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
