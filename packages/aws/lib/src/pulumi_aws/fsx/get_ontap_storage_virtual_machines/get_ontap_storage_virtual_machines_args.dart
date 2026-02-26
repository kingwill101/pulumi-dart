// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_ontap_storage_virtual_machines_filter/get_ontap_storage_virtual_machines_filter.dart';

/// Arguments for getOntapStorageVirtualMachines.
class GetOntapStorageVirtualMachinesArgs {
  /// Configuration block. Detailed below.
  final Input<List<GetOntapStorageVirtualMachinesFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetOntapStorageVirtualMachinesArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetOntapStorageVirtualMachinesFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetOntapStorageVirtualMachinesFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetOntapStorageVirtualMachinesArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachinesArgs(
      filters:
          Input.asOptionalInput<List<GetOntapStorageVirtualMachinesFilter>>(
              map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
