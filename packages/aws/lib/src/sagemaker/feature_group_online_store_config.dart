// ignore_for_file: unused_element, unnecessary_cast

import 'feature_group_online_store_config_security_config.dart';
import 'feature_group_online_store_config_ttl_duration.dart';

class FeatureGroupOnlineStoreConfig {
  /// Set to `true` to disable the automatic creation of an AWS Glue table when configuring an OfflineStore.
  final bool? enableOnlineStore;

  /// Security config for at-rest encryption of your OnlineStore. See Security Config Below.
  final FeatureGroupOnlineStoreConfigSecurityConfig? securityConfig;

  /// Option for different tiers of low latency storage for real-time data retrieval. Valid values are `Standard`, or `InMemory`.
  final String? storageType;

  /// Time to live duration, where the record is hard deleted after the expiration time is reached; ExpiresAt = EventTime + TtlDuration.. See TTl Duration Below.
  final FeatureGroupOnlineStoreConfigTtlDuration? ttlDuration;

  /// Creates a new [FeatureGroupOnlineStoreConfig].
  /// [enableOnlineStore] Set to `true` to disable the automatic creation of an AWS Glue table when configuring an OfflineStore.
  /// [securityConfig] Security config for at-rest encryption of your OnlineStore. See Security Config Below.
  /// [storageType] Option for different tiers of low latency storage for real-time data retrieval. Valid values are `Standard`, or `InMemory`.
  /// [ttlDuration] Time to live duration, where the record is hard deleted after the expiration time is reached; ExpiresAt = EventTime + TtlDuration.. See TTl Duration Below.
  FeatureGroupOnlineStoreConfig({
    this.enableOnlineStore,
    this.securityConfig,
    this.storageType,
    this.ttlDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableOnlineStoreValue = enableOnlineStore;
    if (enableOnlineStoreValue != null) {
      map['enableOnlineStore'] = enableOnlineStoreValue;
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = securityConfigValue.toMap();
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    final ttlDurationValue = ttlDuration;
    if (ttlDurationValue != null) {
      map['ttlDuration'] = ttlDurationValue.toMap();
    }
    return map;
  }

  factory FeatureGroupOnlineStoreConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupOnlineStoreConfig(
      enableOnlineStore: map['enableOnlineStore'] == null
          ? null
          : map['enableOnlineStore'] as bool,
      securityConfig: map['securityConfig'] == null
          ? null
          : FeatureGroupOnlineStoreConfigSecurityConfig.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      storageType:
          map['storageType'] == null ? null : map['storageType'] as String,
      ttlDuration: map['ttlDuration'] == null
          ? null
          : FeatureGroupOnlineStoreConfigTtlDuration.fromMap(
              (map['ttlDuration'] as Map).cast<String, dynamic>()),
    );
  }
}
