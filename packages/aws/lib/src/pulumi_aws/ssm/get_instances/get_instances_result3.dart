// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instances_filter/get_instances_filter3.dart';

/// Result data returned by getInstances.
class GetInstancesResult3 {
  final List<GetInstancesFilter3>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of instance IDs of the matched SSM managed instances.
  final List<String> ids;
  final String region;

  GetInstancesResult3({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetInstancesFilter3, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    return map;
  }

  factory GetInstancesResult3.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult3(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetInstancesFilter3>(
              map['filters'],
              (value) => GetInstancesFilter3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
