// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_squota_infos_quota_info.dart';

/// Result data returned by getSQuotaInfos.
class GetSQuotaInfosResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parent;

  /// (Output) The list of QuotaInfo.
  final List<GetSQuotaInfosQuotaInfo> quotaInfos;
  final String service;

  /// Creates a new [GetSQuotaInfosResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Required.
  /// [quotaInfos] (Output) The list of QuotaInfo.
  /// [service] Required.
  GetSQuotaInfosResult({
    required this.id,
    required this.parent,
    required this.quotaInfos,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'parent': parent,
      'quotaInfos':
          pulumi.Input.encodeList<
            GetSQuotaInfosQuotaInfo,
            Map<String, dynamic>
          >(quotaInfos, (value) => value.toMap()),
      'service': service,
    };
  }

  factory GetSQuotaInfosResult.fromMap(Map<String, dynamic> map) {
    return GetSQuotaInfosResult(
      id: map['id'] as String,
      parent: map['parent'] as String,
      quotaInfos: pulumi.Input.decodeList<GetSQuotaInfosQuotaInfo>(
        map['quotaInfos'],
        (value) => GetSQuotaInfosQuotaInfo.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      service: map['service'] as String,
    );
  }
}
