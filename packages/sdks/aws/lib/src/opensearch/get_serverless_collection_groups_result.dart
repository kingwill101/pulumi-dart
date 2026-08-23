// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_collection_groups_collection_group_summary.dart';

/// Result data returned by getServerlessCollectionGroups.
class GetServerlessCollectionGroupsResult {
  /// List of collection group summary objects. See `collectionGroupSummaries` below for details.
  final List<GetServerlessCollectionGroupsCollectionGroupSummary> collectionGroupSummaries;
  final String region;

  /// Creates a new [GetServerlessCollectionGroupsResult].
  /// [collectionGroupSummaries] List of collection group summary objects. See `collectionGroupSummaries` below for details.
  /// [region] Required.
  const GetServerlessCollectionGroupsResult({
    required this.collectionGroupSummaries,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionGroupSummaries': pulumi.Input.encodeList<GetServerlessCollectionGroupsCollectionGroupSummary, Map<String, dynamic>>(collectionGroupSummaries, (value) => value.toMap()),
      'region': region,
    };
  }

  factory GetServerlessCollectionGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetServerlessCollectionGroupsResult(
      collectionGroupSummaries: pulumi.Input.decodeList<GetServerlessCollectionGroupsCollectionGroupSummary>(map['collectionGroupSummaries']!, (value) => GetServerlessCollectionGroupsCollectionGroupSummary.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
    );
  }
}
