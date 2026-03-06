// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'store_encrypt_conf_user_cmk_info.dart';

class StoreEncryptConf {
  /// Enable encryption. Default false.
  final pulumi.Input<bool>? enable;
  /// Supported encryption type, only supports `default`(AES), `m4`.
  final pulumi.Input<String>? encryptType;
  /// User bring your own key (BYOK) encryption Refer to details, the format is as follows. See user_cmk_info below. `{ "cmk_key_id": "your_cmk_key_id", "arn": "your_role_arn", "region_id": "you_cmk_region_id" }`. See `user_cmk_info` below.
  final pulumi.Input<StoreEncryptConfUserCmkInfo>? userCmkInfo;

  /// Creates a new [StoreEncryptConf].
  /// [enable] Enable encryption. Default false.
  /// [encryptType] Supported encryption type, only supports `default`(AES), `m4`.
  /// [userCmkInfo] User bring your own key (BYOK) encryption Refer to details, the format is as follows. See user_cmk_info below. `{ "cmk_key_id": "your_cmk_key_id", "arn": "your_role_arn", "region_id": "you_cmk_region_id" }`. See `user_cmk_info` below.
  const StoreEncryptConf({
    this.enable,
    this.encryptType,
    this.userCmkInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'encryptType': ?encryptType,
      'userCmkInfo': ?pulumi.Input.mapOptionalInputValue<StoreEncryptConfUserCmkInfo, Map<String, dynamic>>(userCmkInfo, (value) => value.toMap()),
    };
  }

  factory StoreEncryptConf.fromMap(Map<String, dynamic> map) {
    return StoreEncryptConf(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptType: (() { final guardedValue = map['encryptType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userCmkInfo: (() { final guardedValue = map['userCmkInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoreEncryptConfUserCmkInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

