// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machines_filter.dart';

/// Result data returned by getOntapStorageVirtualMachines.
class GetOntapStorageVirtualMachinesResult {
  final List<GetOntapStorageVirtualMachinesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of all SVM IDs found.
  final List<String>? ids;
  final String? region;

  /// Creates a new [GetOntapStorageVirtualMachinesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all SVM IDs found.
  /// [region] Optional.
  const GetOntapStorageVirtualMachinesResult({
    this.filters,
    this.id,
    this.ids,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetOntapStorageVirtualMachinesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
    };
  }

  factory GetOntapStorageVirtualMachinesResult.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachinesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetOntapStorageVirtualMachinesFilter>(guardedValue, (value) => GetOntapStorageVirtualMachinesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
