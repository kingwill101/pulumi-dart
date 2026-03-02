// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_instance_type_burstable_instance.dart';
import 'get_instance_types_instance_type_gpu.dart';
import 'get_instance_types_instance_type_local_storage.dart';

class GetInstanceTypesInstanceType {
  /// List of availability zones that support the instance type.
  final pulumi.Input<List<String>> availabilityZones;
  /// The burstable instance attribution.
  final pulumi.Input<GetInstanceTypesInstanceTypeBurstableInstance> burstableInstance;
  /// Filter the results to a specific number of cpu cores.
  final pulumi.Input<int> cpuCoreCount;
  /// Filter the result whose network interface number is no more than `eni_amount`.
  final pulumi.Input<int> eniAmount;
  /// (Available since v1.239.0) The maximum number of IPv6 addresses per ENI.
  final pulumi.Input<int> eniIpv6AddressQuantity;
  /// (Available since v1.239.0) The maximum number of IPv4 addresses per ENI.
  final pulumi.Input<int> eniPrivateIpAddressQuantity;
  /// (Available since v1.239.0) The maximum number of ENIs per instance.
  final pulumi.Input<int> eniQuantity;
  /// The instance type family.
  final pulumi.Input<String> family;
  /// The GPU attribution of an instance type:
  final pulumi.Input<GetInstanceTypesInstanceTypeGpu> gpu;
  /// ID of the instance type.
  final pulumi.Input<String> id;
  /// Local storage of an instance type.
  final pulumi.Input<GetInstanceTypesInstanceTypeLocalStorage> localStorage;
  /// (Available since v1.239.0) The maximum number of queues per ENI, including primary and secondary ENIs.
  final pulumi.Input<int> maximumQueueNumberPerEni;
  /// Filter the results to a specific memory size in GB.
  final pulumi.Input<double> memorySize;
  /// Indicates whether the cloud disk can be attached by using the nonvolatile memory express (NVMe) protocol.
  final pulumi.Input<String> nvmeSupport;
  /// The price of instance type. **Note:** `price` takes effect only if `sorted_by` is set to `Price`.
  final pulumi.Input<String> price;
  /// (Available since v1.239.0) The default number of queues per primary ENI.
  final pulumi.Input<int> primaryEniQueueNumber;
  /// (Available since v1.239.0) The default number of queues per secondary ENI.
  final pulumi.Input<int> secondaryEniQueueNumber;
  /// (Available since v1.239.0) The maximum number of queues on ENIs that the instance type supports.
  final pulumi.Input<int> totalEniQueueQuantity;

  /// Creates a new [GetInstanceTypesInstanceType].
  /// [availabilityZones] List of availability zones that support the instance type.
  /// [burstableInstance] The burstable instance attribution.
  /// [cpuCoreCount] Filter the results to a specific number of cpu cores.
  /// [eniAmount] Filter the result whose network interface number is no more than `eni_amount`.
  /// [eniIpv6AddressQuantity] (Available since v1.239.0) The maximum number of IPv6 addresses per ENI.
  /// [eniPrivateIpAddressQuantity] (Available since v1.239.0) The maximum number of IPv4 addresses per ENI.
  /// [eniQuantity] (Available since v1.239.0) The maximum number of ENIs per instance.
  /// [family] The instance type family.
  /// [gpu] The GPU attribution of an instance type:
  /// [id] ID of the instance type.
  /// [localStorage] Local storage of an instance type.
  /// [maximumQueueNumberPerEni] (Available since v1.239.0) The maximum number of queues per ENI, including primary and secondary ENIs.
  /// [memorySize] Filter the results to a specific memory size in GB.
  /// [nvmeSupport] Indicates whether the cloud disk can be attached by using the nonvolatile memory express (NVMe) protocol.
  /// [price] The price of instance type. **Note:** `price` takes effect only if `sorted_by` is set to `Price`.
  /// [primaryEniQueueNumber] (Available since v1.239.0) The default number of queues per primary ENI.
  /// [secondaryEniQueueNumber] (Available since v1.239.0) The default number of queues per secondary ENI.
  /// [totalEniQueueQuantity] (Available since v1.239.0) The maximum number of queues on ENIs that the instance type supports.
  GetInstanceTypesInstanceType({
    required this.availabilityZones,
    required this.burstableInstance,
    required this.cpuCoreCount,
    required this.eniAmount,
    required this.eniIpv6AddressQuantity,
    required this.eniPrivateIpAddressQuantity,
    required this.eniQuantity,
    required this.family,
    required this.gpu,
    required this.id,
    required this.localStorage,
    required this.maximumQueueNumberPerEni,
    required this.memorySize,
    required this.nvmeSupport,
    required this.price,
    required this.primaryEniQueueNumber,
    required this.secondaryEniQueueNumber,
    required this.totalEniQueueQuantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': availabilityZones,
      'burstableInstance': pulumi.Input.mapInputValue<GetInstanceTypesInstanceTypeBurstableInstance, Map<String, dynamic>>(burstableInstance, (value) => value.toMap()),
      'cpuCoreCount': cpuCoreCount,
      'eniAmount': eniAmount,
      'eniIpv6AddressQuantity': eniIpv6AddressQuantity,
      'eniPrivateIpAddressQuantity': eniPrivateIpAddressQuantity,
      'eniQuantity': eniQuantity,
      'family': family,
      'gpu': pulumi.Input.mapInputValue<GetInstanceTypesInstanceTypeGpu, Map<String, dynamic>>(gpu, (value) => value.toMap()),
      'id': id,
      'localStorage': pulumi.Input.mapInputValue<GetInstanceTypesInstanceTypeLocalStorage, Map<String, dynamic>>(localStorage, (value) => value.toMap()),
      'maximumQueueNumberPerEni': maximumQueueNumberPerEni,
      'memorySize': memorySize,
      'nvmeSupport': nvmeSupport,
      'price': price,
      'primaryEniQueueNumber': primaryEniQueueNumber,
      'secondaryEniQueueNumber': secondaryEniQueueNumber,
      'totalEniQueueQuantity': totalEniQueueQuantity,
    };
  }

  factory GetInstanceTypesInstanceType.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesInstanceType(
      availabilityZones: ((map['availabilityZones'] as List).cast<String>()).input(),
      burstableInstance: (GetInstanceTypesInstanceTypeBurstableInstance.fromMap((map['burstableInstance'] as Map).cast<String, dynamic>())).input(),
      cpuCoreCount: (map['cpuCoreCount'] as int).input(),
      eniAmount: (map['eniAmount'] as int).input(),
      eniIpv6AddressQuantity: (map['eniIpv6AddressQuantity'] as int).input(),
      eniPrivateIpAddressQuantity: (map['eniPrivateIpAddressQuantity'] as int).input(),
      eniQuantity: (map['eniQuantity'] as int).input(),
      family: (map['family'] as String).input(),
      gpu: (GetInstanceTypesInstanceTypeGpu.fromMap((map['gpu'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      localStorage: (GetInstanceTypesInstanceTypeLocalStorage.fromMap((map['localStorage'] as Map).cast<String, dynamic>())).input(),
      maximumQueueNumberPerEni: (map['maximumQueueNumberPerEni'] as int).input(),
      memorySize: (map['memorySize'] as double).input(),
      nvmeSupport: (map['nvmeSupport'] as String).input(),
      price: (map['price'] as String).input(),
      primaryEniQueueNumber: (map['primaryEniQueueNumber'] as int).input(),
      secondaryEniQueueNumber: (map['secondaryEniQueueNumber'] as int).input(),
      totalEniQueueQuantity: (map['totalEniQueueQuantity'] as int).input(),
    );
  }
}

