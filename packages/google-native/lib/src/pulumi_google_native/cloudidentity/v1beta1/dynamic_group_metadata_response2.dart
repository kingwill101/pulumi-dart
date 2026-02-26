// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'dynamic_group_query_response2.dart';
import 'dynamic_group_status_response2.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadataResponse2 {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final List<DynamicGroupQueryResponse2> queries;

  /// Status of the dynamic group.
  final DynamicGroupStatusResponse2 status;

  DynamicGroupMetadataResponse2({
    required this.queries,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queries'] =
        Input.encodeList<DynamicGroupQueryResponse2, Map<String, dynamic>>(
            queries, (value) => value.toMap());
    map['status'] = status.toMap();
    return map;
  }

  factory DynamicGroupMetadataResponse2.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadataResponse2(
      queries: Input.decodeList<DynamicGroupQueryResponse2>(
          map['queries'],
          (value) => DynamicGroupQueryResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: DynamicGroupStatusResponse2.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}
