// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_plan_quota_parameter.dart';
import 'quota_plan_quota_sub_quota_info_list.dart';

class QuotaPlanQuota {
  /// Level 2 Quota CU configuration See `parameter` below.
  final QuotaPlanQuotaParameter? parameter;
  /// Secondary Quota list
  ///
  /// > **NOTE:** need to list all secondary Quota
  /// See `sub_quota_info_list` below.
  final List<QuotaPlanQuotaSubQuotaInfoList>? subQuotaInfoLists;

  /// Creates a new [QuotaPlanQuota].
  /// [parameter] Level 2 Quota CU configuration See `parameter` below.
  /// [subQuotaInfoLists] Secondary Quota list
  QuotaPlanQuota({
    this.parameter,
    this.subQuotaInfoLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter == null ? null : parameter!.toMap(),
      'subQuotaInfoLists': ?subQuotaInfoLists == null ? null : pulumi.Input.encodeList<QuotaPlanQuotaSubQuotaInfoList, Map<String, dynamic>>(subQuotaInfoLists!, (value) => value.toMap()),
    };
  }

  factory QuotaPlanQuota.fromMap(Map<String, dynamic> map) {
    return QuotaPlanQuota(
      parameter: map['parameter'] == null ? null : QuotaPlanQuotaParameter.fromMap((map['parameter'] as Map).cast<String, dynamic>()),
      subQuotaInfoLists: map['subQuotaInfoLists'] == null ? null : pulumi.Input.decodeList<QuotaPlanQuotaSubQuotaInfoList>(map['subQuotaInfoLists'], (value) => QuotaPlanQuotaSubQuotaInfoList.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

