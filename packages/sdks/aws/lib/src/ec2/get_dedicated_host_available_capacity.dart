// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_host_available_capacity_available_instance_capacity.dart';

class GetDedicatedHostAvailableCapacity {
  /// The number of instances that can be launched onto the Dedicated Host for each instance size supported. See `availableInstanceCapacity` below.
  final pulumi.Input<List<GetDedicatedHostAvailableCapacityAvailableInstanceCapacity>> availableInstanceCapacities;
  /// The number of vCPUs available for launching instances onto the Dedicated Host.
  final pulumi.Input<int> availableVcpus;

  /// Creates a new [GetDedicatedHostAvailableCapacity].
  /// [availableInstanceCapacities] The number of instances that can be launched onto the Dedicated Host for each instance size supported. See `availableInstanceCapacity` below.
  /// [availableVcpus] The number of vCPUs available for launching instances onto the Dedicated Host.
  const GetDedicatedHostAvailableCapacity({
    required this.availableInstanceCapacities,
    required this.availableVcpus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableInstanceCapacities': pulumi.Input.mapInputValue<List<GetDedicatedHostAvailableCapacityAvailableInstanceCapacity>, List<Map<String, dynamic>>>(availableInstanceCapacities, (value) => pulumi.Input.encodeList<GetDedicatedHostAvailableCapacityAvailableInstanceCapacity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availableVcpus': availableVcpus,
    };
  }

  factory GetDedicatedHostAvailableCapacity.fromMap(Map<String, dynamic> map) {
    return GetDedicatedHostAvailableCapacity(
      availableInstanceCapacities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDedicatedHostAvailableCapacityAvailableInstanceCapacity>(map['availableInstanceCapacities']!, (value) => GetDedicatedHostAvailableCapacityAvailableInstanceCapacity.fromMap((value as Map).cast<String, dynamic>()))),
      availableVcpus: pulumi.Input.fromValue((map['availableVcpus'] as num).toInt()),
    );
  }
}
