// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_auth_config.dart';
import 'domain_cache_config.dart';
import 'domain_certificate_config.dart';
import 'domain_http_header_config.dart';
import 'domain_page404_config.dart';
import 'domain_parameter_filter_config.dart';
import 'domain_refer_config.dart';

/// Input properties used for looking up and filtering Domain resources.
class DomainState {
  final pulumi.Input<DomainAuthConfig>? authConfig;
  final pulumi.Input<List<String>>? blockIps;
  final pulumi.Input<List<DomainCacheConfig>>? cacheConfigs;
  final pulumi.Input<String>? cdnType;
  final pulumi.Input<DomainCertificateConfig>? certificateConfig;
  final pulumi.Input<String>? domainName;
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

  /// Creates a new [DomainState].
  /// [authConfig] Optional.
  /// [blockIps] Optional.
  /// [cacheConfigs] Optional.
  /// [cdnType] Optional.
  /// [certificateConfig] Optional.
  /// [domainName] Optional.
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
  DomainState({
    pulumi.Output<DomainAuthConfig>? authConfig,
    pulumi.Output<List<String>>? blockIps,
    pulumi.Output<List<DomainCacheConfig>>? cacheConfigs,
    pulumi.Output<String>? cdnType,
    pulumi.Output<DomainCertificateConfig>? certificateConfig,
    pulumi.Output<String>? domainName,
    pulumi.Output<List<DomainHttpHeaderConfig>>? httpHeaderConfigs,
    pulumi.Output<String>? optimizeEnable,
    pulumi.Output<DomainPage404Config>? page404Config,
    pulumi.Output<String>? pageCompressEnable,
    pulumi.Output<DomainParameterFilterConfig>? parameterFilterConfig,
    pulumi.Output<String>? rangeEnable,
    pulumi.Output<DomainReferConfig>? referConfig,
    pulumi.Output<String>? scope,
    pulumi.Output<int>? sourcePort,
    pulumi.Output<String>? sourceType,
    pulumi.Output<List<String>>? sources,
    pulumi.Output<String>? videoSeekEnable,
  }) :
      authConfig = pulumi.Input.asOptionalInput<DomainAuthConfig>(authConfig),
      blockIps = pulumi.Input.asOptionalInput<List<String>>(blockIps),
      cacheConfigs = pulumi.Input.asOptionalInput<List<DomainCacheConfig>>(cacheConfigs),
      cdnType = pulumi.Input.asOptionalInput<String>(cdnType),
      certificateConfig = pulumi.Input.asOptionalInput<DomainCertificateConfig>(certificateConfig),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      httpHeaderConfigs = pulumi.Input.asOptionalInput<List<DomainHttpHeaderConfig>>(httpHeaderConfigs),
      optimizeEnable = pulumi.Input.asOptionalInput<String>(optimizeEnable),
      page404Config = pulumi.Input.asOptionalInput<DomainPage404Config>(page404Config),
      pageCompressEnable = pulumi.Input.asOptionalInput<String>(pageCompressEnable),
      parameterFilterConfig = pulumi.Input.asOptionalInput<DomainParameterFilterConfig>(parameterFilterConfig),
      rangeEnable = pulumi.Input.asOptionalInput<String>(rangeEnable),
      referConfig = pulumi.Input.asOptionalInput<DomainReferConfig>(referConfig),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      sourcePort = pulumi.Input.asOptionalInput<int>(sourcePort),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      sources = pulumi.Input.asOptionalInput<List<String>>(sources),
      videoSeekEnable = pulumi.Input.asOptionalInput<String>(videoSeekEnable);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<DomainAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'blockIps': ?blockIps,
      'cacheConfigs': ?pulumi.Input.mapOptionalInputValue<List<DomainCacheConfig>, List<Map<String, dynamic>>>(cacheConfigs, (value) => pulumi.Input.encodeList<DomainCacheConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cdnType': ?cdnType,
      'certificateConfig': ?pulumi.Input.mapOptionalInputValue<DomainCertificateConfig, Map<String, dynamic>>(certificateConfig, (value) => value.toMap()),
      'domainName': ?domainName,
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

  factory DomainState.fromMap(Map<String, dynamic> map) {
    return DomainState(
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<DomainAuthConfig>(DomainAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      blockIps: map['blockIps'] == null ? null : pulumi.Output.create<List<String>>((map['blockIps'] as List).cast<String>()),
      cacheConfigs: map['cacheConfigs'] == null ? null : pulumi.Output.create<List<DomainCacheConfig>>(pulumi.Input.decodeList<DomainCacheConfig>(map['cacheConfigs'], (value) => DomainCacheConfig.fromMap((value as Map).cast<String, dynamic>()))),
      cdnType: map['cdnType'] == null ? null : pulumi.Output.create<String>(map['cdnType'] as String),
      certificateConfig: map['certificateConfig'] == null ? null : pulumi.Output.create<DomainCertificateConfig>(DomainCertificateConfig.fromMap((map['certificateConfig'] as Map).cast<String, dynamic>())),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      httpHeaderConfigs: map['httpHeaderConfigs'] == null ? null : pulumi.Output.create<List<DomainHttpHeaderConfig>>(pulumi.Input.decodeList<DomainHttpHeaderConfig>(map['httpHeaderConfigs'], (value) => DomainHttpHeaderConfig.fromMap((value as Map).cast<String, dynamic>()))),
      optimizeEnable: map['optimizeEnable'] == null ? null : pulumi.Output.create<String>(map['optimizeEnable'] as String),
      page404Config: map['page404Config'] == null ? null : pulumi.Output.create<DomainPage404Config>(DomainPage404Config.fromMap((map['page404Config'] as Map).cast<String, dynamic>())),
      pageCompressEnable: map['pageCompressEnable'] == null ? null : pulumi.Output.create<String>(map['pageCompressEnable'] as String),
      parameterFilterConfig: map['parameterFilterConfig'] == null ? null : pulumi.Output.create<DomainParameterFilterConfig>(DomainParameterFilterConfig.fromMap((map['parameterFilterConfig'] as Map).cast<String, dynamic>())),
      rangeEnable: map['rangeEnable'] == null ? null : pulumi.Output.create<String>(map['rangeEnable'] as String),
      referConfig: map['referConfig'] == null ? null : pulumi.Output.create<DomainReferConfig>(DomainReferConfig.fromMap((map['referConfig'] as Map).cast<String, dynamic>())),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      sourcePort: map['sourcePort'] == null ? null : pulumi.Output.create<int>(map['sourcePort'] as int),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<String>>((map['sources'] as List).cast<String>()),
      videoSeekEnable: map['videoSeekEnable'] == null ? null : pulumi.Output.create<String>(map['videoSeekEnable'] as String),
    );
  }
}

