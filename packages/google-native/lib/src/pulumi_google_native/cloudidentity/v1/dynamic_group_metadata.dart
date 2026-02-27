// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadata {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final List<DynamicGroupQuery>? queries;

  DynamicGroupMetadata({
    this.queries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queriesValue = queries;
    if (queriesValue != null) {
      map['queries'] =
          pulumi.Input.encodeList<DynamicGroupQuery, Map<String, dynamic>>(
              queriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DynamicGroupMetadata.fromMap(Map<String, dynamic> map) {
    return DynamicGroupMetadata(
      queries: map['queries'] == null
          ? null
          : pulumi.Input.decodeList<DynamicGroupQuery>(
              map['queries'],
              (value) => DynamicGroupQuery.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
