// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_available_capacity_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a dedicated host that includes the name of the dedicated host. It is used for the response to the instance view of a dedicated host group.
class DedicatedHostInstanceViewWithNameResponse {
  /// Specifies the unique id of the dedicated physical machine on which the dedicated host resides.
  final String assetId;
  /// Unutilized capacity of the dedicated host.
  final DedicatedHostAvailableCapacityResponse? availableCapacity;
  /// The name of the dedicated host.
  final String name;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;

  /// Creates a new [DedicatedHostInstanceViewWithNameResponse].
  /// [assetId] Specifies the unique id of the dedicated physical machine on which the dedicated host resides.
  /// [availableCapacity] Unutilized capacity of the dedicated host.
  /// [name] The name of the dedicated host.
  /// [statuses] The resource status information.
  DedicatedHostInstanceViewWithNameResponse({
    required this.assetId,
    this.availableCapacity,
    required this.name,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'availableCapacity': ?availableCapacity == null ? null : availableCapacity!.toMap(),
      'name': name,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
    };
  }

  factory DedicatedHostInstanceViewWithNameResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostInstanceViewWithNameResponse(
      assetId: map['assetId'] as String,
      availableCapacity: map['availableCapacity'] == null ? null : DedicatedHostAvailableCapacityResponse.fromMap((map['availableCapacity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

