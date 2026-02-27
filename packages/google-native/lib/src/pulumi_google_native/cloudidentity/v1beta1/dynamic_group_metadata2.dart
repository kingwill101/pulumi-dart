// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'dynamic_group_query2.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadata2 {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final List<DynamicGroupQuery2>? queries;

  DynamicGroupMetadata2({
    this.queries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queriesValue = queries;
    if (queriesValue != null) {
      map['queries'] =
          Input.encodeList<DynamicGroupQuery2, Map<String, dynamic>>(
              queriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DynamicGroupMetadata2.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadata2(
      queries: map['queries'] == null
          ? null
          : Input.decodeList<DynamicGroupQuery2>(
              map['queries'],
              (value) => DynamicGroupQuery2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
