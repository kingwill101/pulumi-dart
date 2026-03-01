// ignore_for_file: unused_element, unnecessary_cast

import 'quota_plan_quota_sub_quota_info_list_parameter.dart';

class QuotaPlanQuotaSubQuotaInfoList {
  /// The nickname of the level-2 quota.
  final String nickName;
  /// The parameters of level-1 quota.
  final QuotaPlanQuotaSubQuotaInfoListParameter? parameter;

  /// Creates a new [QuotaPlanQuotaSubQuotaInfoList].
  /// [nickName] The nickname of the level-2 quota.
  /// [parameter] The parameters of level-1 quota.
  QuotaPlanQuotaSubQuotaInfoList({
    required this.nickName,
    this.parameter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nickName': nickName,
      'parameter': ?parameter == null ? null : parameter!.toMap(),
    };
  }

  factory QuotaPlanQuotaSubQuotaInfoList.fromMap(Map<String, dynamic> map) {
    return QuotaPlanQuotaSubQuotaInfoList(
      nickName: map['nickName'] as String,
      parameter: map['parameter'] == null ? null : QuotaPlanQuotaSubQuotaInfoListParameter.fromMap((map['parameter'] as Map).cast<String, dynamic>()),
    );
  }
}

