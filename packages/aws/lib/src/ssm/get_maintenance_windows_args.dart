// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maintenance_windows_filter.dart';

/// {@template pulumi_ssm_get_maintenance_windows_get_maintenance_windows_args_doc}
/// Arguments for getMaintenanceWindows.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_maintenance_windows_get_maintenance_windows_args_doc}
class GetMaintenanceWindowsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetMaintenanceWindowsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetMaintenanceWindowsArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetMaintenanceWindowsArgs({
    List<GetMaintenanceWindowsFilter>? filters,
    String? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetMaintenanceWindowsFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetMaintenanceWindowsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetMaintenanceWindowsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetMaintenanceWindowsArgs.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceWindowsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetMaintenanceWindowsFilter>(map['filters'], (value) => GetMaintenanceWindowsFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

