// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_maintenance_windows_filter/get_maintenance_windows_filter.dart';

/// Arguments for getMaintenanceWindows.
class GetMaintenanceWindowsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetMaintenanceWindowsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetMaintenanceWindowsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetMaintenanceWindowsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetMaintenanceWindowsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetMaintenanceWindowsArgs.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceWindowsArgs(
      filters: Input.asOptionalInput<List<GetMaintenanceWindowsFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
