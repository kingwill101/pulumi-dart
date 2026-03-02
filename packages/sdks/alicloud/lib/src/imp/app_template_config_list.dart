// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppTemplateConfigList {
  /// Configuration item key. Valid values: ["config.appCallbackAuthKey","config.appCallbackUrl","config.callbackClass.live","config.callbackClass.user","config.livePullDomain","config.livePushDomain","config.multipleClientsLogin","config.regionId","config.streamChangeCallbackUrl"].
  final pulumi.Input<String>? key;
  /// Configuration item content.
  ///
  /// > **NOTE:**  By default, the attribute `config_list` will return all of nine keys with empty value. If you want to set one or more of the key's value, you had better also set other keys, otherwise, there will be a diff.
  final pulumi.Input<String>? value;

  /// Creates a new [AppTemplateConfigList].
  /// [key] Configuration item key. Valid values: ["config.appCallbackAuthKey","config.appCallbackUrl","config.callbackClass.live","config.callbackClass.user","config.livePullDomain","config.livePushDomain","config.multipleClientsLogin","config.regionId","config.streamChangeCallbackUrl"].
  /// [value] Configuration item content.
  AppTemplateConfigList({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory AppTemplateConfigList.fromMap(Map<String, dynamic> map) {
    return AppTemplateConfigList(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

