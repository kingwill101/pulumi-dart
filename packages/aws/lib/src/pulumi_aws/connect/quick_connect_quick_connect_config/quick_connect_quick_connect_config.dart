// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../quick_connect_quick_connect_config_phone_config/quick_connect_quick_connect_config_phone_config.dart';
import '../quick_connect_quick_connect_config_queue_config/quick_connect_quick_connect_config_queue_config.dart';
import '../quick_connect_quick_connect_config_user_config/quick_connect_quick_connect_config_user_config.dart';

class QuickConnectQuickConnectConfig {
  /// Specifies the phone configuration of the Quick Connect. This is required only if <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> is `PHONE_NUMBER`. The <span pulumi-lang-nodejs="`phoneConfig`" pulumi-lang-dotnet="`PhoneConfig`" pulumi-lang-go="`phoneConfig`" pulumi-lang-python="`phone_config`" pulumi-lang-yaml="`phoneConfig`" pulumi-lang-java="`phoneConfig`">`phone_config`</span> block is documented below.
  final List<QuickConnectQuickConnectConfigPhoneConfig>? phoneConfigs;

  /// Specifies the queue configuration of the Quick Connect. This is required only if <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> is `QUEUE`. The <span pulumi-lang-nodejs="`queueConfig`" pulumi-lang-dotnet="`QueueConfig`" pulumi-lang-go="`queueConfig`" pulumi-lang-python="`queue_config`" pulumi-lang-yaml="`queueConfig`" pulumi-lang-java="`queueConfig`">`queue_config`</span> block is documented below.
  final List<QuickConnectQuickConnectConfigQueueConfig>? queueConfigs;

  /// Specifies the configuration type of the quick connect. valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  final String quickConnectType;

  /// Specifies the user configuration of the Quick Connect. This is required only if <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> is `USER`. The <span pulumi-lang-nodejs="`userConfig`" pulumi-lang-dotnet="`UserConfig`" pulumi-lang-go="`userConfig`" pulumi-lang-python="`user_config`" pulumi-lang-yaml="`userConfig`" pulumi-lang-java="`userConfig`">`user_config`</span> block is documented below.
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
      map['phoneConfigs'] = Input.encodeList<
          QuickConnectQuickConnectConfigPhoneConfig,
          Map<String, dynamic>>(phoneConfigsValue, (value) => value.toMap());
    }
    final queueConfigsValue = queueConfigs;
    if (queueConfigsValue != null) {
      map['queueConfigs'] = Input.encodeList<
          QuickConnectQuickConnectConfigQueueConfig,
          Map<String, dynamic>>(queueConfigsValue, (value) => value.toMap());
    }
    map['quickConnectType'] = quickConnectType;
    final userConfigsValue = userConfigs;
    if (userConfigsValue != null) {
      map['userConfigs'] = Input.encodeList<
          QuickConnectQuickConnectConfigUserConfig,
          Map<String, dynamic>>(userConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory QuickConnectQuickConnectConfig.fromMap(Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfig(
      phoneConfigs: map['phoneConfigs'] == null
          ? null
          : Input.decodeList<QuickConnectQuickConnectConfigPhoneConfig>(
              map['phoneConfigs'],
              (value) => QuickConnectQuickConnectConfigPhoneConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      queueConfigs: map['queueConfigs'] == null
          ? null
          : Input.decodeList<QuickConnectQuickConnectConfigQueueConfig>(
              map['queueConfigs'],
              (value) => QuickConnectQuickConnectConfigQueueConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      quickConnectType: map['quickConnectType'] as String,
      userConfigs: map['userConfigs'] == null
          ? null
          : Input.decodeList<QuickConnectQuickConnectConfigUserConfig>(
              map['userConfigs'],
              (value) => QuickConnectQuickConnectConfigUserConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
