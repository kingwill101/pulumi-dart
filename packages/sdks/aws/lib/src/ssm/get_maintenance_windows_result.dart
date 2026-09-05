// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maintenance_windows_filter.dart';

/// Result data returned by getMaintenanceWindows.
class GetMaintenanceWindowsResult {
  final List<GetMaintenanceWindowsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of window IDs of the matched SSM maintenance windows.
  final List<String>? ids;
  final String? region;

  /// Creates a new [GetMaintenanceWindowsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of window IDs of the matched SSM maintenance windows.
  /// [region] Optional.
  const GetMaintenanceWindowsResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMaintenanceWindowsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
    };
  }

  factory GetMaintenanceWindowsResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceWindowsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMaintenanceWindowsFilter>(guardedValue, (value) => GetMaintenanceWindowsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
