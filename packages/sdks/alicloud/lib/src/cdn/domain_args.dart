// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_auth_config.dart';
import 'domain_cache_config.dart';
import 'domain_certificate_config.dart';
import 'domain_http_header_config.dart';
import 'domain_page404_config.dart';
import 'domain_parameter_filter_config.dart';
import 'domain_refer_config.dart';

/// {@template pulumi_cdn_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_cdn_domain_domain_args_doc}
class DomainArgs {
  final pulumi.Input<DomainAuthConfig>? authConfig;
  final pulumi.Input<List<String>>? blockIps;
  final pulumi.Input<List<DomainCacheConfig>>? cacheConfigs;
  final pulumi.Input<String> cdnType;
  final pulumi.Input<DomainCertificateConfig>? certificateConfig;
  final pulumi.Input<String> domainName;
  final pulumi.Input<List<DomainHttpHeaderConfig>>? httpHeaderConfigs;
  final pulumi.Input<String>? optimizeEnable;
  final pulumi.Input<DomainPage404Config>? page404Config;
  final pulumi.Input<String>? pageCompressEnable;
  final pulumi.Input<DomainParameterFilterConfig>? parameterFilterConfig;
  final pulumi.Input<String>? rangeEnable;
  final pulumi.Input<DomainReferConfig>? referConfig;
  final pulumi.Input<String>? scope;
  final pulumi.Input<int>? sourcePort;
  final pulumi.Input<String>? sourceType;
  final pulumi.Input<List<String>>? sources;
  final pulumi.Input<String>? videoSeekEnable;

  /// Creates a new [DomainArgs].
  /// [authConfig] Optional.
  /// [blockIps] Optional.
  /// [cacheConfigs] Optional.
  /// [cdnType] Required.
  /// [certificateConfig] Optional.
  /// [domainName] Required.
  /// [httpHeaderConfigs] Optional.
  /// [optimizeEnable] Optional.
  /// [page404Config] Optional.
  /// [pageCompressEnable] Optional.
  /// [parameterFilterConfig] Optional.
  /// [rangeEnable] Optional.
  /// [referConfig] Optional.
  /// [scope] Optional.
  /// [sourcePort] Optional.
  /// [sourceType] Optional.
  /// [sources] Optional.
  /// [videoSeekEnable] Optional.
  DomainArgs({
    this.authConfig,
    this.blockIps,
    this.cacheConfigs,
    required this.cdnType,
    this.certificateConfig,
    required this.domainName,
    this.httpHeaderConfigs,
    this.optimizeEnable,
    this.page404Config,
    this.pageCompressEnable,
    this.parameterFilterConfig,
    this.rangeEnable,
    this.referConfig,
    this.scope,
    this.sourcePort,
    this.sourceType,
    this.sources,
    this.videoSeekEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<DomainAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'blockIps': ?blockIps,
      'cacheConfigs': ?pulumi.Input.mapOptionalInputValue<List<DomainCacheConfig>, List<Map<String, dynamic>>>(cacheConfigs, (value) => pulumi.Input.encodeList<DomainCacheConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cdnType': cdnType,
      'certificateConfig': ?pulumi.Input.mapOptionalInputValue<DomainCertificateConfig, Map<String, dynamic>>(certificateConfig, (value) => value.toMap()),
      'domainName': domainName,
      'httpHeaderConfigs': ?pulumi.Input.mapOptionalInputValue<List<DomainHttpHeaderConfig>, List<Map<String, dynamic>>>(httpHeaderConfigs, (value) => pulumi.Input.encodeList<DomainHttpHeaderConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'optimizeEnable': ?optimizeEnable,
      'page404Config': ?pulumi.Input.mapOptionalInputValue<DomainPage404Config, Map<String, dynamic>>(page404Config, (value) => value.toMap()),
      'pageCompressEnable': ?pageCompressEnable,
      'parameterFilterConfig': ?pulumi.Input.mapOptionalInputValue<DomainParameterFilterConfig, Map<String, dynamic>>(parameterFilterConfig, (value) => value.toMap()),
      'rangeEnable': ?rangeEnable,
      'referConfig': ?pulumi.Input.mapOptionalInputValue<DomainReferConfig, Map<String, dynamic>>(referConfig, (value) => value.toMap()),
      'scope': ?scope,
      'sourcePort': ?sourcePort,
      'sourceType': ?sourceType,
      'sources': ?sources,
      'videoSeekEnable': ?videoSeekEnable,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      authConfig: map['authConfig'] == null ? null : (DomainAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())).input(),
      blockIps: map['blockIps'] == null ? null : ((map['blockIps'] as List).cast<String>()).input(),
      cacheConfigs: map['cacheConfigs'] == null ? null : (pulumi.Input.decodeList<DomainCacheConfig>(map['cacheConfigs'], (value) => DomainCacheConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cdnType: (map['cdnType'] as String).input(),
      certificateConfig: map['certificateConfig'] == null ? null : (DomainCertificateConfig.fromMap((map['certificateConfig'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      httpHeaderConfigs: map['httpHeaderConfigs'] == null ? null : (pulumi.Input.decodeList<DomainHttpHeaderConfig>(map['httpHeaderConfigs'], (value) => DomainHttpHeaderConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      optimizeEnable: map['optimizeEnable'] == null ? null : (map['optimizeEnable'] as String).input(),
      page404Config: map['page404Config'] == null ? null : (DomainPage404Config.fromMap((map['page404Config'] as Map).cast<String, dynamic>())).input(),
      pageCompressEnable: map['pageCompressEnable'] == null ? null : (map['pageCompressEnable'] as String).input(),
      parameterFilterConfig: map['parameterFilterConfig'] == null ? null : (DomainParameterFilterConfig.fromMap((map['parameterFilterConfig'] as Map).cast<String, dynamic>())).input(),
      rangeEnable: map['rangeEnable'] == null ? null : (map['rangeEnable'] as String).input(),
      referConfig: map['referConfig'] == null ? null : (DomainReferConfig.fromMap((map['referConfig'] as Map).cast<String, dynamic>())).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
      sourcePort: map['sourcePort'] == null ? null : (map['sourcePort'] as int).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
      sources: map['sources'] == null ? null : ((map['sources'] as List).cast<String>()).input(),
      videoSeekEnable: map['videoSeekEnable'] == null ? null : (map['videoSeekEnable'] as String).input(),
    );
  }
}

