// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maintenance_policies_filter.dart';

/// {@template pulumi_index_get_maintenance_policies_get_maintenance_policies_args_doc}
/// Arguments for getMaintenancePolicies.
/// {@endtemplate}
/// {@macro pulumi_index_get_maintenance_policies_get_maintenance_policies_args_doc}
class GetMaintenancePoliciesArgs {
  final pulumi.Input<List<GetMaintenancePoliciesFilter>>? filters;

  /// Creates a new [GetMaintenancePoliciesArgs].
  /// [filters] Optional.
  GetMaintenancePoliciesArgs({
    List<GetMaintenancePoliciesFilter>? filters,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetMaintenancePoliciesFilter>>(filters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetMaintenancePoliciesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetMaintenancePoliciesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetMaintenancePoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetMaintenancePoliciesArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetMaintenancePoliciesFilter>(map['filters'], (value) => GetMaintenancePoliciesFilter.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

