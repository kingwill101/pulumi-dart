// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_plan_quota_sub_quota_info_list_parameter.dart';

class QuotaPlanQuotaSubQuotaInfoList {
  /// The nickname of the level-2 quota.
  final pulumi.Input<String> nickName;
  /// The parameters of level-1 quota.
  final pulumi.Input<QuotaPlanQuotaSubQuotaInfoListParameter>? parameter;

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
      'parameter': ?pulumi.Input.mapOptionalInputValue<QuotaPlanQuotaSubQuotaInfoListParameter, Map<String, dynamic>>(parameter, (value) => value.toMap()),
    };
  }

  factory QuotaPlanQuotaSubQuotaInfoList.fromMap(Map<String, dynamic> map) {
    return QuotaPlanQuotaSubQuotaInfoList(
      nickName: pulumi.Input.fromValue(map['nickName'] as String),
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuotaPlanQuotaSubQuotaInfoListParameter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

