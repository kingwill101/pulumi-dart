// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_group_online_store_config_security_config.dart';
import 'feature_group_online_store_config_ttl_duration.dart';

class FeatureGroupOnlineStoreConfig {
  /// Set to `true` to disable the automatic creation of an AWS Glue table when configuring an OfflineStore.
  final pulumi.Input<bool?>? enableOnlineStore;
  /// Security config for at-rest encryption of your OnlineStore. See Security Config Below.
  final pulumi.Input<FeatureGroupOnlineStoreConfigSecurityConfig?>? securityConfig;
  /// Option for different tiers of low latency storage for real-time data retrieval. Valid values are `Standard`, or `InMemory`.
  final pulumi.Input<String?>? storageType;
  /// Time to live duration, where the record is hard deleted after the expiration time is reached; ExpiresAt = EventTime + TtlDuration.. See TTl Duration Below.
  final pulumi.Input<FeatureGroupOnlineStoreConfigTtlDuration?>? ttlDuration;

  /// Creates a new [FeatureGroupOnlineStoreConfig].
  /// [enableOnlineStore] Set to `true` to disable the automatic creation of an AWS Glue table when configuring an OfflineStore.
  /// [securityConfig] Security config for at-rest encryption of your OnlineStore. See Security Config Below.
  /// [storageType] Option for different tiers of low latency storage for real-time data retrieval. Valid values are `Standard`, or `InMemory`.
  /// [ttlDuration] Time to live duration, where the record is hard deleted after the expiration time is reached; ExpiresAt = EventTime + TtlDuration.. See TTl Duration Below.
  const FeatureGroupOnlineStoreConfig({
    this.enableOnlineStore,
    this.securityConfig,
    this.storageType,
    this.ttlDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableOnlineStore': ?enableOnlineStore,
      'securityConfig': ?pulumi.Input.mapOptionalInputValue<FeatureGroupOnlineStoreConfigSecurityConfig, Map<String, dynamic>>(securityConfig, (value) => value.toMap()),
      'storageType': ?storageType,
      'ttlDuration': ?pulumi.Input.mapOptionalInputValue<FeatureGroupOnlineStoreConfigTtlDuration, Map<String, dynamic>>(ttlDuration, (value) => value.toMap()),
    };
  }

  factory FeatureGroupOnlineStoreConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupOnlineStoreConfig(
      enableOnlineStore: (() { final guardedValue = map['enableOnlineStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityConfig: (() { final guardedValue = map['securityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupOnlineStoreConfigSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ttlDuration: (() { final guardedValue = map['ttlDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureGroupOnlineStoreConfigTtlDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
