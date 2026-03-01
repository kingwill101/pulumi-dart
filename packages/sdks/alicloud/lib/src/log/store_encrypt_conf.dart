// ignore_for_file: unused_element, unnecessary_cast

import 'store_encrypt_conf_user_cmk_info.dart';

class StoreEncryptConf {
  /// Enable encryption. Default false.
  final bool? enable;
  /// Supported encryption type, only supports `default`(AES), `m4`.
  final String? encryptType;
  /// User bring your own key (BYOK) encryption Refer to details, the format is as follows. See user_cmk_info below. `{ "cmk_key_id": "your_cmk_key_id", "arn": "your_role_arn", "region_id": "you_cmk_region_id" }`. See `user_cmk_info` below.
  final StoreEncryptConfUserCmkInfo? userCmkInfo;

  /// Creates a new [StoreEncryptConf].
  /// [enable] Enable encryption. Default false.
  /// [encryptType] Supported encryption type, only supports `default`(AES), `m4`.
  /// [userCmkInfo] User bring your own key (BYOK) encryption Refer to details, the format is as follows. See user_cmk_info below. `{ "cmk_key_id": "your_cmk_key_id", "arn": "your_role_arn", "region_id": "you_cmk_region_id" }`. See `user_cmk_info` below.
  StoreEncryptConf({
    this.enable,
    this.encryptType,
    this.userCmkInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'encryptType': ?encryptType,
      'userCmkInfo': ?userCmkInfo == null ? null : userCmkInfo!.toMap(),
    };
  }

  factory StoreEncryptConf.fromMap(Map<String, dynamic> map) {
    return StoreEncryptConf(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      encryptType: map['encryptType'] == null ? null : map['encryptType'] as String,
      userCmkInfo: map['userCmkInfo'] == null ? null : StoreEncryptConfUserCmkInfo.fromMap((map['userCmkInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

