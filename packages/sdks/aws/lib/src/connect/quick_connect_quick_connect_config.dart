// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quick_connect_quick_connect_config_phone_config.dart';
import 'quick_connect_quick_connect_config_queue_config.dart';
import 'quick_connect_quick_connect_config_user_config.dart';

class QuickConnectQuickConnectConfig {
  /// Specifies the phone configuration of the Quick Connect. This is required only if `quick_connect_type` is `PHONE_NUMBER`. The `phone_config` block is documented below.
  final pulumi.Input<List<QuickConnectQuickConnectConfigPhoneConfig>>? phoneConfigs;
  /// Specifies the queue configuration of the Quick Connect. This is required only if `quick_connect_type` is `QUEUE`. The `queue_config` block is documented below.
  final pulumi.Input<List<QuickConnectQuickConnectConfigQueueConfig>>? queueConfigs;
  /// Specifies the configuration type of the quick connect. valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  final pulumi.Input<String> quickConnectType;
  /// Specifies the user configuration of the Quick Connect. This is required only if `quick_connect_type` is `USER`. The `user_config` block is documented below.
  final pulumi.Input<List<QuickConnectQuickConnectConfigUserConfig>>? userConfigs;

  /// Creates a new [QuickConnectQuickConnectConfig].
  /// [phoneConfigs] Specifies the phone configuration of the Quick Connect. This is required only if `quick_connect_type` is `PHONE_NUMBER`. The `phone_config` block is documented below.
  /// [queueConfigs] Specifies the queue configuration of the Quick Connect. This is required only if `quick_connect_type` is `QUEUE`. The `queue_config` block is documented below.
  /// [quickConnectType] Specifies the configuration type of the quick connect. valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  /// [userConfigs] Specifies the user configuration of the Quick Connect. This is required only if `quick_connect_type` is `USER`. The `user_config` block is documented below.
  const QuickConnectQuickConnectConfig({
    this.phoneConfigs,
    this.queueConfigs,
    required this.quickConnectType,
    this.userConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneConfigs': ?pulumi.Input.mapOptionalInputValue<List<QuickConnectQuickConnectConfigPhoneConfig>, List<Map<String, dynamic>>>(phoneConfigs, (value) => pulumi.Input.encodeList<QuickConnectQuickConnectConfigPhoneConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queueConfigs': ?pulumi.Input.mapOptionalInputValue<List<QuickConnectQuickConnectConfigQueueConfig>, List<Map<String, dynamic>>>(queueConfigs, (value) => pulumi.Input.encodeList<QuickConnectQuickConnectConfigQueueConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quickConnectType': quickConnectType,
      'userConfigs': ?pulumi.Input.mapOptionalInputValue<List<QuickConnectQuickConnectConfigUserConfig>, List<Map<String, dynamic>>>(userConfigs, (value) => pulumi.Input.encodeList<QuickConnectQuickConnectConfigUserConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory QuickConnectQuickConnectConfig.fromMap(Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfig(
      phoneConfigs: (() { final guardedValue = map['phoneConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuickConnectQuickConnectConfigPhoneConfig>(guardedValue, (value) => QuickConnectQuickConnectConfigPhoneConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queueConfigs: (() { final guardedValue = map['queueConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuickConnectQuickConnectConfigQueueConfig>(guardedValue, (value) => QuickConnectQuickConnectConfigQueueConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quickConnectType: pulumi.Input.fromValue(map['quickConnectType'] as String),
      userConfigs: (() { final guardedValue = map['userConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuickConnectQuickConnectConfigUserConfig>(guardedValue, (value) => QuickConnectQuickConnectConfigUserConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

