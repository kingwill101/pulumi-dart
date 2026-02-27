// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query_cloudidentity_v1beta1.dart';

/// Dynamic group metadata like queries and status.
class DynamicGroupMetadataCloudidentityV1beta1 {
  /// Memberships will be the union of all queries. Only one entry with USER resource is currently supported. Customers can create up to 100 dynamic groups.
  final List<DynamicGroupQueryCloudidentityV1beta1>? queries;

  DynamicGroupMetadataCloudidentityV1beta1({
    this.queries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queriesValue = queries;
    if (queriesValue != null) {
      map['queries'] = pulumi.Input.encodeList<
          DynamicGroupQueryCloudidentityV1beta1,
          Map<String, dynamic>>(queriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DynamicGroupMetadataCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DynamicGroupMetadataCloudidentityV1beta1(
      queries: map['queries'] == null
          ? null
          : pulumi.Input.decodeList<DynamicGroupQueryCloudidentityV1beta1>(
              map['queries'],
              (value) => DynamicGroupQueryCloudidentityV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
