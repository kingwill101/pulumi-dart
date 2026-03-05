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
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockIps: (() { final guardedValue = map['blockIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheConfigs: (() { final guardedValue = map['cacheConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainCacheConfig>(guardedValue, (value) => DomainCacheConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cdnType: pulumi.Input.fromValue(map['cdnType'] as String),
      certificateConfig: (() { final guardedValue = map['certificateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainCertificateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      httpHeaderConfigs: (() { final guardedValue = map['httpHeaderConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainHttpHeaderConfig>(guardedValue, (value) => DomainHttpHeaderConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      optimizeEnable: (() { final guardedValue = map['optimizeEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page404Config: (() { final guardedValue = map['page404Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainPage404Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pageCompressEnable: (() { final guardedValue = map['pageCompressEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterFilterConfig: (() { final guardedValue = map['parameterFilterConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainParameterFilterConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rangeEnable: (() { final guardedValue = map['rangeEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referConfig: (() { final guardedValue = map['referConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainReferConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePort: (() { final guardedValue = map['sourcePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      videoSeekEnable: (() { final guardedValue = map['videoSeekEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

