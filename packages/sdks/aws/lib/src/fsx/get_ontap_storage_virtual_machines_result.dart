// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_storage_virtual_machines_filter.dart';

/// Result data returned by getOntapStorageVirtualMachines.
class GetOntapStorageVirtualMachinesResult {
  final List<GetOntapStorageVirtualMachinesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of all SVM IDs found.
  final List<String> ids;
  final String region;

  /// Creates a new [GetOntapStorageVirtualMachinesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all SVM IDs found.
  /// [region] Required.
  GetOntapStorageVirtualMachinesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetOntapStorageVirtualMachinesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
    };
  }

  factory GetOntapStorageVirtualMachinesResult.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachinesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetOntapStorageVirtualMachinesFilter>(map['filters'], (value) => GetOntapStorageVirtualMachinesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

