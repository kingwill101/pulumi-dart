// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machines_filter.dart';

/// {@template pulumi_fsx_get_ontap_storage_virtual_machines_get_ontap_storage_virtual_machines_args_doc}
/// Arguments for getOntapStorageVirtualMachines.
/// {@endtemplate}
/// {@macro pulumi_fsx_get_ontap_storage_virtual_machines_get_ontap_storage_virtual_machines_args_doc}
class GetOntapStorageVirtualMachinesArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<GetOntapStorageVirtualMachinesFilter>?>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetOntapStorageVirtualMachinesArgs].
  /// [filters] Configuration block. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetOntapStorageVirtualMachinesArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetOntapStorageVirtualMachinesFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetOntapStorageVirtualMachinesFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetOntapStorageVirtualMachinesArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachinesArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetOntapStorageVirtualMachinesFilter>(guardedValue, (value) => GetOntapStorageVirtualMachinesFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
