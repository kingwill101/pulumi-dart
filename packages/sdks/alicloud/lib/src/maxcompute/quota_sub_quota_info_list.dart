// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_sub_quota_info_list_parameter.dart';

class QuotaSubQuotaInfoList {
  /// Secondary Quota nickname.
  ///
  /// &gt; **NOTE:** -- Subscription: If you enter partNickName, the first-level QuotaNickName created is os_partNickName_p. Each first-level Quota has a default second-level Quota whose QuotaNickName is os_partNickName . -- The first-level quotanicname created by PayAsYouGo is os_PayAsYouGoQuota_p  by default, the second-level quotanicname is os_PayAsYouGoQuota
  final pulumi.Input<String> nickName;

  /// Parameter See `parameter` below.
  final pulumi.Input<QuotaSubQuotaInfoListParameter>? parameter;

  /// The secondary Quota type. The default value is: FUXI_OFFLINE
  final pulumi.Input<String>? type;

  /// Creates a new [QuotaSubQuotaInfoList].
  /// [nickName] Secondary Quota nickname.
  /// [parameter] Parameter See `parameter` below.
  /// [type] The secondary Quota type. The default value is: FUXI_OFFLINE
  QuotaSubQuotaInfoList({required this.nickName, this.parameter, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nickName': nickName,
      'parameter':
          ?pulumi.Input.mapOptionalInputValue<
            QuotaSubQuotaInfoListParameter,
            Map<String, dynamic>
          >(parameter, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory QuotaSubQuotaInfoList.fromMap(Map<String, dynamic> map) {
    return QuotaSubQuotaInfoList(
      nickName: pulumi.Input.fromValue(map['nickName'] as String),
      parameter: (() {
        final guardedValue = map['parameter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          QuotaSubQuotaInfoListParameter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
