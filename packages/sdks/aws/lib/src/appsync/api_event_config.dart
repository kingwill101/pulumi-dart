// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_event_config_auth_provider.dart';
import 'api_event_config_connection_auth_mode.dart';
import 'api_event_config_default_publish_auth_mode.dart';
import 'api_event_config_default_subscribe_auth_mode.dart';
import 'api_event_config_log_config.dart';

class ApiEventConfig {
  /// List of authentication providers. See Auth Providers below.
  final List<ApiEventConfigAuthProvider> authProviders;
  /// List of authentication modes for connections. See Auth Modes below.
  final List<ApiEventConfigConnectionAuthMode> connectionAuthModes;
  /// List of default authentication modes for publishing. See Auth Modes below.
  final List<ApiEventConfigDefaultPublishAuthMode> defaultPublishAuthModes;
  /// List of default authentication modes for subscribing. See Auth Modes below.
  final List<ApiEventConfigDefaultSubscribeAuthMode> defaultSubscribeAuthModes;
  /// Logging configuration. See Log Config below.
  final ApiEventConfigLogConfig? logConfig;

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
      'authProviders': pulumi.Input.encodeList<ApiEventConfigAuthProvider, Map<String, dynamic>>(authProviders, (value) => value.toMap()),
      'connectionAuthModes': pulumi.Input.encodeList<ApiEventConfigConnectionAuthMode, Map<String, dynamic>>(connectionAuthModes, (value) => value.toMap()),
      'defaultPublishAuthModes': pulumi.Input.encodeList<ApiEventConfigDefaultPublishAuthMode, Map<String, dynamic>>(defaultPublishAuthModes, (value) => value.toMap()),
      'defaultSubscribeAuthModes': pulumi.Input.encodeList<ApiEventConfigDefaultSubscribeAuthMode, Map<String, dynamic>>(defaultSubscribeAuthModes, (value) => value.toMap()),
      'logConfig': ?logConfig == null ? null : logConfig!.toMap(),
    };
  }

  factory ApiEventConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfig(
      authProviders: pulumi.Input.decodeList<ApiEventConfigAuthProvider>(map['authProviders'], (value) => ApiEventConfigAuthProvider.fromMap((value as Map).cast<String, dynamic>())),
      connectionAuthModes: pulumi.Input.decodeList<ApiEventConfigConnectionAuthMode>(map['connectionAuthModes'], (value) => ApiEventConfigConnectionAuthMode.fromMap((value as Map).cast<String, dynamic>())),
      defaultPublishAuthModes: pulumi.Input.decodeList<ApiEventConfigDefaultPublishAuthMode>(map['defaultPublishAuthModes'], (value) => ApiEventConfigDefaultPublishAuthMode.fromMap((value as Map).cast<String, dynamic>())),
      defaultSubscribeAuthModes: pulumi.Input.decodeList<ApiEventConfigDefaultSubscribeAuthMode>(map['defaultSubscribeAuthModes'], (value) => ApiEventConfigDefaultSubscribeAuthMode.fromMap((value as Map).cast<String, dynamic>())),
      logConfig: map['logConfig'] == null ? null : ApiEventConfigLogConfig.fromMap((map['logConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

