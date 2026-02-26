// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_quick_connect_quick_connect_config_phone_config/get_quick_connect_quick_connect_config_phone_config.dart';
import '../get_quick_connect_quick_connect_config_queue_config/get_quick_connect_quick_connect_config_queue_config.dart';
import '../get_quick_connect_quick_connect_config_user_config/get_quick_connect_quick_connect_config_user_config.dart';

class GetQuickConnectQuickConnectConfig {
  /// Phone configuration of the Quick Connect. This is returned only if <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> is `PHONE_NUMBER`. The <span pulumi-lang-nodejs="`phoneConfig`" pulumi-lang-dotnet="`PhoneConfig`" pulumi-lang-go="`phoneConfig`" pulumi-lang-python="`phone_config`" pulumi-lang-yaml="`phoneConfig`" pulumi-lang-java="`phoneConfig`">`phone_config`</span> block is documented below.
  final List<GetQuickConnectQuickConnectConfigPhoneConfig> phoneConfigs;

  /// Queue configuration of the Quick Connect. This is returned only if <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> is `QUEUE`. The <span pulumi-lang-nodejs="`queueConfig`" pulumi-lang-dotnet="`QueueConfig`" pulumi-lang-go="`queueConfig`" pulumi-lang-python="`queue_config`" pulumi-lang-yaml="`queueConfig`" pulumi-lang-java="`queueConfig`">`queue_config`</span> block is documented below.
  final List<GetQuickConnectQuickConnectConfigQueueConfig> queueConfigs;

  /// Configuration type of the Quick Connect. Valid values are `PHONE_NUMBER`, `QUEUE`, `USER`.
  final String quickConnectType;

  /// User configuration of the Quick Connect. This is returned only if <span pulumi-lang-nodejs="`quickConnectType`" pulumi-lang-dotnet="`QuickConnectType`" pulumi-lang-go="`quickConnectType`" pulumi-lang-python="`quick_connect_type`" pulumi-lang-yaml="`quickConnectType`" pulumi-lang-java="`quickConnectType`">`quick_connect_type`</span> is `USER`. The <span pulumi-lang-nodejs="`userConfig`" pulumi-lang-dotnet="`UserConfig`" pulumi-lang-go="`userConfig`" pulumi-lang-python="`user_config`" pulumi-lang-yaml="`userConfig`" pulumi-lang-java="`userConfig`">`user_config`</span> block is documented below.
  final List<GetQuickConnectQuickConnectConfigUserConfig> userConfigs;

  GetQuickConnectQuickConnectConfig({
    required this.phoneConfigs,
    required this.queueConfigs,
    required this.quickConnectType,
    required this.userConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['phoneConfigs'] = Input.encodeList<
        GetQuickConnectQuickConnectConfigPhoneConfig,
        Map<String, dynamic>>(phoneConfigs, (value) => value.toMap());
    map['queueConfigs'] = Input.encodeList<
        GetQuickConnectQuickConnectConfigQueueConfig,
        Map<String, dynamic>>(queueConfigs, (value) => value.toMap());
    map['quickConnectType'] = quickConnectType;
    map['userConfigs'] = Input.encodeList<
        GetQuickConnectQuickConnectConfigUserConfig,
        Map<String, dynamic>>(userConfigs, (value) => value.toMap());
    return map;
  }

  factory GetQuickConnectQuickConnectConfig.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfig(
      phoneConfigs:
          Input.decodeList<GetQuickConnectQuickConnectConfigPhoneConfig>(
              map['phoneConfigs'],
              (value) => GetQuickConnectQuickConnectConfigPhoneConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      queueConfigs:
          Input.decodeList<GetQuickConnectQuickConnectConfigQueueConfig>(
              map['queueConfigs'],
              (value) => GetQuickConnectQuickConnectConfigQueueConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      quickConnectType: map['quickConnectType'] as String,
      userConfigs:
          Input.decodeList<GetQuickConnectQuickConnectConfigUserConfig>(
              map['userConfigs'],
              (value) => GetQuickConnectQuickConnectConfigUserConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
