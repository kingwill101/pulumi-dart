// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_maintenance_windows_filter/get_maintenance_windows_filter.dart';

/// Result data returned by getMaintenanceWindows.
class GetMaintenanceWindowsResult {
  final List<GetMaintenanceWindowsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of window IDs of the matched SSM maintenance windows.
  final List<String> ids;
  final String region;

  GetMaintenanceWindowsResult({
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
          Input.encodeList<GetMaintenanceWindowsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    return map;
  }

  factory GetMaintenanceWindowsResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceWindowsResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetMaintenanceWindowsFilter>(
              map['filters'],
              (value) => GetMaintenanceWindowsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
