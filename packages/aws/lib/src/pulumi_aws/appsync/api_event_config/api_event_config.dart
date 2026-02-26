// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../api_event_config_auth_provider/api_event_config_auth_provider.dart';
import '../api_event_config_connection_auth_mode/api_event_config_connection_auth_mode.dart';
import '../api_event_config_default_publish_auth_mode/api_event_config_default_publish_auth_mode.dart';
import '../api_event_config_default_subscribe_auth_mode/api_event_config_default_subscribe_auth_mode.dart';
import '../api_event_config_log_config/api_event_config_log_config.dart';

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

  ApiEventConfig({
    required this.authProviders,
    required this.connectionAuthModes,
    required this.defaultPublishAuthModes,
    required this.defaultSubscribeAuthModes,
    this.logConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authProviders'] =
        Input.encodeList<ApiEventConfigAuthProvider, Map<String, dynamic>>(
            authProviders, (value) => value.toMap());
    map['connectionAuthModes'] = Input.encodeList<
        ApiEventConfigConnectionAuthMode,
        Map<String, dynamic>>(connectionAuthModes, (value) => value.toMap());
    map['defaultPublishAuthModes'] = Input.encodeList<
            ApiEventConfigDefaultPublishAuthMode, Map<String, dynamic>>(
        defaultPublishAuthModes, (value) => value.toMap());
    map['defaultSubscribeAuthModes'] = Input.encodeList<
            ApiEventConfigDefaultSubscribeAuthMode, Map<String, dynamic>>(
        defaultSubscribeAuthModes, (value) => value.toMap());
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = logConfigValue.toMap();
    }
    return map;
  }

  factory ApiEventConfig.fromMap(Map<String, dynamic> map) {
    return ApiEventConfig(
      authProviders: Input.decodeList<ApiEventConfigAuthProvider>(
          map['authProviders'],
          (value) => ApiEventConfigAuthProvider.fromMap(
              (value as Map).cast<String, dynamic>())),
      connectionAuthModes: Input.decodeList<ApiEventConfigConnectionAuthMode>(
          map['connectionAuthModes'],
          (value) => ApiEventConfigConnectionAuthMode.fromMap(
              (value as Map).cast<String, dynamic>())),
      defaultPublishAuthModes:
          Input.decodeList<ApiEventConfigDefaultPublishAuthMode>(
              map['defaultPublishAuthModes'],
              (value) => ApiEventConfigDefaultPublishAuthMode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      defaultSubscribeAuthModes:
          Input.decodeList<ApiEventConfigDefaultSubscribeAuthMode>(
              map['defaultSubscribeAuthModes'],
              (value) => ApiEventConfigDefaultSubscribeAuthMode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      logConfig: map['logConfig'] == null
          ? null
          : ApiEventConfigLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
