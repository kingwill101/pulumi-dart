// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_sub_quota_info_list.dart';

/// Input properties used for looking up and filtering Quota resources.
class QuotaState {
  /// Valid values: odps_intl/odpsplus_intl/odps/odpsplus
  /// - *NOTE:** --odps_intl: International Station standard post-payment -- odpsplus_intl: International Station standard pre-payment -- odps: China Station standard post-payment -- odpsplus: China Station standard pre-payment
  final pulumi.Input<String>? commodityCode;
  /// Define quota rules when creating quotas, for example:{"CU":50,"ord_time":"1:Month","autoRenew":false}.
  /// CU (minimum quota resource size is 50)
  /// ord_time 1:Month/Year (1 means quantity: Month/Year is the unit)
  /// autoRenew (whether to enable automatic renewal)
  /// If PaymentType is PayAsYouGo, you do not need to fill in
  final pulumi.Input<String>? commodityData;
  /// Quota partial nickname, supports English letters and numbers, up to 24 characters
  ///
  /// &gt; **NOTE:** If PaymentType is PayAsYouGo, you do not need to fill it in
  final pulumi.Input<String>? partNickName;
  /// Payment type. Valid values: Subscription/PayAsYouGo
  ///
  /// &gt; **NOTE:** -- PayAsYouGo only needs to be opened once per region
  final pulumi.Input<String>? paymentType;
  /// Secondary Quota list
  ///
  /// &gt; **NOTE:** -- Add: If the configuration contains a second-level Quota that does not exist, a second-level Quota is added. -- Delete: If the configuration does not contain the existing secondary Quota, it will be deleted. -- Modify: If the configuration is inconsistent with the existing secondary Quota configuration parameters, the secondary Quota configuration will be updated. -- The default secondary Quota must be configured and cannot be deleted.
  /// See `sub_quota_info_list` below.
  final pulumi.Input<List<QuotaSubQuotaInfoList>>? subQuotaInfoLists;

  /// Creates a new [QuotaState].
  /// [commodityCode] Valid values: odps_intl/odpsplus_intl/odps/odpsplus
  /// [commodityData] Define quota rules when creating quotas, for example:{"CU":50,"ord_time":"1:Month","autoRenew":false}.
  /// [partNickName] Quota partial nickname, supports English letters and numbers, up to 24 characters
  /// [paymentType] Payment type. Valid values: Subscription/PayAsYouGo
  /// [subQuotaInfoLists] Secondary Quota list
  QuotaState({
    this.commodityCode,
    this.commodityData,
    this.partNickName,
    this.paymentType,
    this.subQuotaInfoLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commodityCode': ?commodityCode,
      'commodityData': ?commodityData,
      'partNickName': ?partNickName,
      'paymentType': ?paymentType,
      'subQuotaInfoLists': ?pulumi.Input.mapOptionalInputValue<List<QuotaSubQuotaInfoList>, List<Map<String, dynamic>>>(subQuotaInfoLists, (value) => pulumi.Input.encodeList<QuotaSubQuotaInfoList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory QuotaState.fromMap(Map<String, dynamic> map) {
    return QuotaState(
      commodityCode: (() { final guardedValue = map['commodityCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      commodityData: (() { final guardedValue = map['commodityData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partNickName: (() { final guardedValue = map['partNickName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subQuotaInfoLists: (() { final guardedValue = map['subQuotaInfoLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<QuotaSubQuotaInfoList>(guardedValue, (value) => QuotaSubQuotaInfoList.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

