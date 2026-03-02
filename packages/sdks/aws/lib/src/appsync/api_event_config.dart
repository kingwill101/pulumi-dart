// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_event_config_auth_provider.dart';
import 'api_event_config_connection_auth_mode.dart';
import 'api_event_config_default_publish_auth_mode.dart';
import 'api_event_config_default_subscribe_auth_mode.dart';
import 'api_event_config_log_config.dart';

class ApiEventConfig {
  /// List of authentication providers. See Auth Providers below.
  final pulumi.Input<List<ApiEventConfigAuthProvider>> authProviders;
  /// List of authentication modes for connections. See Auth Modes below.
  final pulumi.Input<List<ApiEventConfigConnectionAuthMode>> connectionAuthModes;
  /// List of default authentication modes for publishing. See Auth Modes below.
  final pulumi.Input<List<ApiEventConfigDefaultPublishAuthMode>> defaultPublishAuthModes;
  /// List of default authentication modes for subscribing. See Auth Modes below.
  final pulumi.Input<List<ApiEventConfigDefaultSubscribeAuthMode>> defaultSubscribeAuthModes;
  /// Logging configuration. See Log Config below.
  final pulumi.Input<ApiEventConfigLogConfig>? logConfig;

  /// Creates a new [ApiEventConfig].
  /// [authProviders] List of authentication providers. See Auth Providers below.
  /// [connectionAuthModes] List of authentication modes for connections. See Auth Modes below.
  /// [defaultPublishAuthModes] List of default authentication modes for publishing. See Auth Modes below.
  /// [defaultSubscribeAuthModes] List of default authentication modes for subscribing. See Auth Modes below.
  /// [logConfig] Logging configuration. See Log Config below.
  ApiEventConfig({
    required this.authProviders,
    required this.connectionAuthModes,
    required this.defaultPublishAuthModes,
    required this.defaultSubscribeAuthModes,
    this.logConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProviders': pulumi.Input.mapInputValue<List<ApiEventConfigAuthProvider>, List<Map<String, dynamic>>>(authProviders, (value) => pulumi.Input.encodeList<ApiEventConfigAuthProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionAuthModes': pulumi.Input.mapInputValue<List<ApiEventConfigConnectionAuthMode>, List<Map<String, dynamic>>>(connectionAuthModes, (value) => pulumi.Input.encodeList<ApiEventConfigConnectionAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultPublishAuthModes': pulumi.Input.mapInputValue<List<ApiEventConfigDefaultPublishAuthMode>, List<Map<String, dynamic>>>(defaultPublishAuthModes, (value) => pulumi.Input.encodeList<ApiEventConfigDefaultPublishAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultSubscribeAuthModes': pulumi.Input.mapInputValue<List<ApiEventConfigDefaultSubscribeAuthMode>, List<Map<String, dynamic>>>(defaultSubscribeAuthModes, (value) => pulumi.Input.encodeList<ApiEventConfigDefaultSubscribeAuthMode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'logConfig': ?pulumi.Input.mapOptionalInputValue<ApiEventConfigLogConfig, Map<String, dynamic>>(logConfig, (value) => value.toMap()),
    };
  }

  factory ApiEventConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfig(
      authProviders: (pulumi.Input.decodeList<ApiEventConfigAuthProvider>(map['authProviders'], (value) => ApiEventConfigAuthProvider.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectionAuthModes: (pulumi.Input.decodeList<ApiEventConfigConnectionAuthMode>(map['connectionAuthModes'], (value) => ApiEventConfigConnectionAuthMode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultPublishAuthModes: (pulumi.Input.decodeList<ApiEventConfigDefaultPublishAuthMode>(map['defaultPublishAuthModes'], (value) => ApiEventConfigDefaultPublishAuthMode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultSubscribeAuthModes: (pulumi.Input.decodeList<ApiEventConfigDefaultSubscribeAuthMode>(map['defaultSubscribeAuthModes'], (value) => ApiEventConfigDefaultSubscribeAuthMode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      logConfig: map['logConfig'] == null ? null : (ApiEventConfigLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

