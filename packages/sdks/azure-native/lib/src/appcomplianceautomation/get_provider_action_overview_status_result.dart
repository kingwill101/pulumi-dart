// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_item_response.dart';

/// Result data returned by getProviderActionOverviewStatus.
class GetProviderActionOverviewStatusResult {
  /// List of different status items.
  final List<StatusItemResponse>? statusList;

  /// Creates a new [GetProviderActionOverviewStatusResult].
  /// [statusList] List of different status items.
  GetProviderActionOverviewStatusResult({
    this.statusList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusList': ?statusList == null ? null : pulumi.Input.encodeList<StatusItemResponse, Map<String, dynamic>>(statusList!, (value) => value.toMap()),
    };
  }

  factory GetProviderActionOverviewStatusResult.fromMap(Map<String, dynamic> map) {
    return GetProviderActionOverviewStatusResult(
      statusList: map['statusList'] == null ? null : pulumi.Input.decodeList<StatusItemResponse>(map['statusList'], (value) => StatusItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

