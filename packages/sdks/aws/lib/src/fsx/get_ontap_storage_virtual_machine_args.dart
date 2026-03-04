// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machine_filter.dart';

/// {@template pulumi_fsx_get_ontap_storage_virtual_machine_get_ontap_storage_virtual_machine_args_doc}
/// Arguments for getOntapStorageVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_fsx_get_ontap_storage_virtual_machine_get_ontap_storage_virtual_machine_args_doc}
class GetOntapStorageVirtualMachineArgs {
  /// Configuration block. Detailed below.
  final pulumi.Input<List<GetOntapStorageVirtualMachineFilter>>? filters;

  /// Identifier of the storage virtual machine (e.g. `svm-12345678`).
  ///
  /// The arguments of this data source act as filters for querying the available ONTAP Storage Virtual Machines in the current region. The given filters must match exactly one Storage Virtual Machine whose data will be exported as attributes.
  final pulumi.Input<String>? id;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetOntapStorageVirtualMachineArgs].
  /// [filters] Configuration block. Detailed below.
  /// [id] Identifier of the storage virtual machine (e.g. `svm-12345678`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  GetOntapStorageVirtualMachineArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetOntapStorageVirtualMachineFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<
                  GetOntapStorageVirtualMachineFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetOntapStorageVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineArgs(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetOntapStorageVirtualMachineFilter>(
            guardedValue,
            (value) => GetOntapStorageVirtualMachineFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
