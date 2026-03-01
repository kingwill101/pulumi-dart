// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_available_capacity_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a dedicated host.
class DedicatedHostInstanceViewResponse {
  /// Specifies the unique id of the dedicated physical machine on which the dedicated host resides.
  final String assetId;
  /// Unutilized capacity of the dedicated host.
  final DedicatedHostAvailableCapacityResponse? availableCapacity;
  /// The resource status information.
  final List<InstanceViewStatusResponse>? statuses;

  /// Creates a new [DedicatedHostInstanceViewResponse].
  /// [assetId] Specifies the unique id of the dedicated physical machine on which the dedicated host resides.
  /// [availableCapacity] Unutilized capacity of the dedicated host.
  /// [statuses] The resource status information.
  DedicatedHostInstanceViewResponse({
    required this.assetId,
    this.availableCapacity,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'availableCapacity': ?availableCapacity == null ? null : availableCapacity!.toMap(),
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
    };
  }

  factory DedicatedHostInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostInstanceViewResponse(
      assetId: map['assetId'] as String,
      availableCapacity: map['availableCapacity'] == null ? null : DedicatedHostAvailableCapacityResponse.fromMap((map['availableCapacity'] as Map).cast<String, dynamic>()),
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<InstanceViewStatusResponse>(map['statuses'], (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

