// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_collection_groups_collection_group_summary.dart';

/// Result data returned by getServerlessCollectionGroups.
class GetServerlessCollectionGroupsResult {
  /// List of collection group summary objects. See `collectionGroupSummaries` below for details.
  final List<GetServerlessCollectionGroupsCollectionGroupSummary>? collectionGroupSummaries;
  final String? region;

  /// Creates a new [GetServerlessCollectionGroupsResult].
  /// [collectionGroupSummaries] List of collection group summary objects. See `collectionGroupSummaries` below for details.
  /// [region] Optional.
  const GetServerlessCollectionGroupsResult({
    this.collectionGroupSummaries,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupSummaries': ?(() { final guardedValue = collectionGroupSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerlessCollectionGroupsCollectionGroupSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetServerlessCollectionGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupsResult(
      collectionGroupSummaries: (() { final guardedValue = map['collectionGroupSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerlessCollectionGroupsCollectionGroupSummary>(guardedValue, (value) => GetServerlessCollectionGroupsCollectionGroupSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
