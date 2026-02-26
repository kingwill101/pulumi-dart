// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_squota_infos_quota_info/get_squota_infos_quota_info.dart';

/// Result data returned by getSQuotaInfos.
class GetSQuotaInfosResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parent;

  /// (Output) The list of QuotaInfo.
  final List<GetSQuotaInfosQuotaInfo> quotaInfos;
  final String service;

  GetSQuotaInfosResult({
    required this.id,
    required this.parent,
    required this.quotaInfos,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['parent'] = parent;
    map['quotaInfos'] =
        Input.encodeList<GetSQuotaInfosQuotaInfo, Map<String, dynamic>>(
            quotaInfos, (value) => value.toMap());
    map['service'] = service;
    return map;
  }

  factory GetSQuotaInfosResult.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      quotaInfos: Input.decodeList<GetSQuotaInfosQuotaInfo>(
          map['quotaInfos'],
          (value) => GetSQuotaInfosQuotaInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      service: map['service'] as String,
    );
  }
}
