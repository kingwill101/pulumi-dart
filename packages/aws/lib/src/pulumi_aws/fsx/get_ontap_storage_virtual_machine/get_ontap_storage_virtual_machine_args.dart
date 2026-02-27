// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_ontap_storage_virtual_machine_filter/get_ontap_storage_virtual_machine_filter.dart';

/// Arguments for getOntapStorageVirtualMachine.
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

  GetOntapStorageVirtualMachineArgs({
    this.filters,
    this.id,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetOntapStorageVirtualMachineFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<
              GetOntapStorageVirtualMachineFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetOntapStorageVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineArgs(
      filters: pulumi.Input.asOptionalInput<
          List<GetOntapStorageVirtualMachineFilter>>(map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
