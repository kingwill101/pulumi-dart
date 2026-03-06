// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quick_connect_quick_connect_config_phone_config.dart';
import 'get_quick_connect_quick_connect_config_queue_config.dart';
import 'get_quick_connect_quick_connect_config_user_config.dart';

class GetQuickConnectQuickConnectConfig {
  /// Phone configuration of the Quick Connect. This is returned only if `quick_connect_type` is `PHONE_NUMBER`. The `phone_config` block is documented below.
  final pulumi.Input<List<GetQuickConnectQuickConnectConfigPhoneConfig>> phoneConfigs;
  /// Queue configuration of the Quick Connect. This is returned only if `quick_connect_type` is `QUEUE`. The `queue_config` block is documented below.
  final pulumi.Input<List<GetQuickConnectQuickConnectConfigQueueConfig>> queueConfigs;
  /// Configuration type of the Quick Connect. Valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  final pulumi.Input<String> quickConnectType;
  /// User configuration of the Quick Connect. This is returned only if `quick_connect_type` is `USER`. The `user_config` block is documented below.
  final pulumi.Input<List<GetQuickConnectQuickConnectConfigUserConfig>> userConfigs;

  /// Creates a new [GetQuickConnectQuickConnectConfig].
  /// [phoneConfigs] Phone configuration of the Quick Connect. This is returned only if `quick_connect_type` is `PHONE_NUMBER`. The `phone_config` block is documented below.
  /// [queueConfigs] Queue configuration of the Quick Connect. This is returned only if `quick_connect_type` is `QUEUE`. The `queue_config` block is documented below.
  /// [quickConnectType] Configuration type of the Quick Connect. Valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  /// [userConfigs] User configuration of the Quick Connect. This is returned only if `quick_connect_type` is `USER`. The `user_config` block is documented below.
  const GetQuickConnectQuickConnectConfig({
    required this.phoneConfigs,
    required this.queueConfigs,
    required this.quickConnectType,
    required this.userConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneConfigs': pulumi.Input.mapInputValue<List<GetQuickConnectQuickConnectConfigPhoneConfig>, List<Map<String, dynamic>>>(phoneConfigs, (value) => pulumi.Input.encodeList<GetQuickConnectQuickConnectConfigPhoneConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queueConfigs': pulumi.Input.mapInputValue<List<GetQuickConnectQuickConnectConfigQueueConfig>, List<Map<String, dynamic>>>(queueConfigs, (value) => pulumi.Input.encodeList<GetQuickConnectQuickConnectConfigQueueConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quickConnectType': quickConnectType,
      'userConfigs': pulumi.Input.mapInputValue<List<GetQuickConnectQuickConnectConfigUserConfig>, List<Map<String, dynamic>>>(userConfigs, (value) => pulumi.Input.encodeList<GetQuickConnectQuickConnectConfigUserConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetQuickConnectQuickConnectConfig.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfig(
      phoneConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetQuickConnectQuickConnectConfigPhoneConfig>(map['phoneConfigs']!, (value) => GetQuickConnectQuickConnectConfigPhoneConfig.fromMap((value as Map).cast<String, dynamic>()))),
      queueConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetQuickConnectQuickConnectConfigQueueConfig>(map['queueConfigs']!, (value) => GetQuickConnectQuickConnectConfigQueueConfig.fromMap((value as Map).cast<String, dynamic>()))),
      quickConnectType: pulumi.Input.fromValue(map['quickConnectType'] as String),
      userConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetQuickConnectQuickConnectConfigUserConfig>(map['userConfigs']!, (value) => GetQuickConnectQuickConnectConfigUserConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

