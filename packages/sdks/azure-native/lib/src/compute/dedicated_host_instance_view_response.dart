// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_available_capacity_response.dart';
import 'instance_view_status_response.dart';

/// The instance view of a dedicated host.
class DedicatedHostInstanceViewResponse {
  /// Specifies the unique id of the dedicated physical machine on which the dedicated host resides.
  final pulumi.Input<String> assetId;
  /// Unutilized capacity of the dedicated host.
  final pulumi.Input<DedicatedHostAvailableCapacityResponse?>? availableCapacity;
  /// The resource status information.
  final pulumi.Input<List<InstanceViewStatusResponse>?>? statuses;

  /// Creates a new [DedicatedHostInstanceViewResponse].
  /// [assetId] Specifies the unique id of the dedicated physical machine on which the dedicated host resides.
  /// [availableCapacity] Unutilized capacity of the dedicated host.
  /// [statuses] The resource status information.
  const DedicatedHostInstanceViewResponse({
    required this.assetId,
    this.availableCapacity,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetId': assetId,
      'availableCapacity': ?pulumi.Input.mapOptionalInputValue<DedicatedHostAvailableCapacityResponse, Map<String, dynamic>>(availableCapacity, (value) => value.toMap()),
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceViewStatusResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<InstanceViewStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DedicatedHostInstanceViewResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostInstanceViewResponse(
      assetId: pulumi.Input.fromValue(map['assetId'] as String),
      availableCapacity: (() { final guardedValue = map['availableCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DedicatedHostAvailableCapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceViewStatusResponse>(guardedValue, (value) => InstanceViewStatusResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
