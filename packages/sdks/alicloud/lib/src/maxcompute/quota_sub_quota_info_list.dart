// ignore_for_file: unused_element, unnecessary_cast

import 'quota_sub_quota_info_list_parameter.dart';

class QuotaSubQuotaInfoList {
  /// Secondary Quota nickname.
  ///
  /// > **NOTE:** -- Subscription: If you enter partNickName, the first-level QuotaNickName created is os_partNickName_p. Each first-level Quota has a default second-level Quota whose QuotaNickName is os_partNickName . -- The first-level quotanicname created by PayAsYouGo is os_PayAsYouGoQuota_p  by default, the second-level quotanicname is os_PayAsYouGoQuota
  final String nickName;
  /// Parameter See `parameter` below.
  final QuotaSubQuotaInfoListParameter? parameter;
  /// The secondary Quota type. The default value is: FUXI_OFFLINE
  final String? type;

  /// Creates a new [QuotaSubQuotaInfoList].
  /// [nickName] Secondary Quota nickname.
  /// [parameter] Parameter See `parameter` below.
  /// [type] The secondary Quota type. The default value is: FUXI_OFFLINE
  QuotaSubQuotaInfoList({
    required this.nickName,
    this.parameter,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nickName': nickName,
      'parameter': ?parameter == null ? null : parameter!.toMap(),
      'type': ?type,
    };
  }

  factory QuotaSubQuotaInfoList.fromMap(Map<String, dynamic> map) {
    return QuotaSubQuotaInfoList(
      nickName: map['nickName'] as String,
      parameter: map['parameter'] == null ? null : QuotaSubQuotaInfoListParameter.fromMap((map['parameter'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

