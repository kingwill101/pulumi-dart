// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../quick_connect_quick_connect_config_phone_config/quick_connect_quick_connect_config_phone_config.dart';
import '../quick_connect_quick_connect_config_queue_config/quick_connect_quick_connect_config_queue_config.dart';
import '../quick_connect_quick_connect_config_user_config/quick_connect_quick_connect_config_user_config.dart';

class QuickConnectQuickConnectConfig {
  /// Specifies the phone configuration of the Quick Connect. This is required only if `quick_connect_type` is `PHONE_NUMBER`. The `phone_config` block is documented below.
  final List<QuickConnectQuickConnectConfigPhoneConfig>? phoneConfigs;

  /// Specifies the queue configuration of the Quick Connect. This is required only if `quick_connect_type` is `QUEUE`. The `queue_config` block is documented below.
  final List<QuickConnectQuickConnectConfigQueueConfig>? queueConfigs;

  /// Specifies the configuration type of the quick connect. valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  final String quickConnectType;

  /// Specifies the user configuration of the Quick Connect. This is required only if `quick_connect_type` is `USER`. The `user_config` block is documented below.
  final List<QuickConnectQuickConnectConfigUserConfig>? userConfigs;

  QuickConnectQuickConnectConfig({
    this.phoneConfigs,
    this.queueConfigs,
    required this.quickConnectType,
    this.userConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final phoneConfigsValue = phoneConfigs;
    if (phoneConfigsValue != null) {
      map['phoneConfigs'] = pulumi.Input.encodeList<
          QuickConnectQuickConnectConfigPhoneConfig,
          Map<String, dynamic>>(phoneConfigsValue, (value) => value.toMap());
    }
    final queueConfigsValue = queueConfigs;
    if (queueConfigsValue != null) {
      map['queueConfigs'] = pulumi.Input.encodeList<
          QuickConnectQuickConnectConfigQueueConfig,
          Map<String, dynamic>>(queueConfigsValue, (value) => value.toMap());
    }
    map['quickConnectType'] = quickConnectType;
    final userConfigsValue = userConfigs;
    if (userConfigsValue != null) {
      map['userConfigs'] = pulumi.Input.encodeList<
          QuickConnectQuickConnectConfigUserConfig,
          Map<String, dynamic>>(userConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory QuickConnectQuickConnectConfig.fromMap(Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfig(
      phoneConfigs: map['phoneConfigs'] == null
          ? null
          : pulumi.Input.decodeList<QuickConnectQuickConnectConfigPhoneConfig>(
              map['phoneConfigs'],
              (value) => QuickConnectQuickConnectConfigPhoneConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      queueConfigs: map['queueConfigs'] == null
          ? null
          : pulumi.Input.decodeList<QuickConnectQuickConnectConfigQueueConfig>(
              map['queueConfigs'],
              (value) => QuickConnectQuickConnectConfigQueueConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      quickConnectType: map['quickConnectType'] as String,
      userConfigs: map['userConfigs'] == null
          ? null
          : pulumi.Input.decodeList<QuickConnectQuickConnectConfigUserConfig>(
              map['userConfigs'],
              (value) => QuickConnectQuickConnectConfigUserConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
