// ignore_for_file: unused_element, unnecessary_cast

import 'get_instance_types_instance_type_burstable_instance.dart';
import 'get_instance_types_instance_type_gpu.dart';
import 'get_instance_types_instance_type_local_storage.dart';

class GetInstanceTypesInstanceType {
  /// List of availability zones that support the instance type.
  final List<String> availabilityZones;
  /// The burstable instance attribution.
  final GetInstanceTypesInstanceTypeBurstableInstance burstableInstance;
  /// Filter the results to a specific number of cpu cores.
  final int cpuCoreCount;
  /// Filter the result whose network interface number is no more than `eni_amount`.
  final int eniAmount;
  /// (Available since v1.239.0) The maximum number of IPv6 addresses per ENI.
  final int eniIpv6AddressQuantity;
  /// (Available since v1.239.0) The maximum number of IPv4 addresses per ENI.
  final int eniPrivateIpAddressQuantity;
  /// (Available since v1.239.0) The maximum number of ENIs per instance.
  final int eniQuantity;
  /// The instance type family.
  final String family;
  /// The GPU attribution of an instance type:
  final GetInstanceTypesInstanceTypeGpu gpu;
  /// ID of the instance type.
  final String id;
  /// Local storage of an instance type.
  final GetInstanceTypesInstanceTypeLocalStorage localStorage;
  /// (Available since v1.239.0) The maximum number of queues per ENI, including primary and secondary ENIs.
  final int maximumQueueNumberPerEni;
  /// Filter the results to a specific memory size in GB.
  final double memorySize;
  /// Indicates whether the cloud disk can be attached by using the nonvolatile memory express (NVMe) protocol.
  final String nvmeSupport;
  /// The price of instance type. **Note:** `price` takes effect only if `sorted_by` is set to `Price`.
  final String price;
  /// (Available since v1.239.0) The default number of queues per primary ENI.
  final int primaryEniQueueNumber;
  /// (Available since v1.239.0) The default number of queues per secondary ENI.
  final int secondaryEniQueueNumber;
  /// (Available since v1.239.0) The maximum number of queues on ENIs that the instance type supports.
  final int totalEniQueueQuantity;

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
      'burstableInstance': burstableInstance.toMap(),
      'cpuCoreCount': cpuCoreCount,
      'eniAmount': eniAmount,
      'eniIpv6AddressQuantity': eniIpv6AddressQuantity,
      'eniPrivateIpAddressQuantity': eniPrivateIpAddressQuantity,
      'eniQuantity': eniQuantity,
      'family': family,
      'gpu': gpu.toMap(),
      'id': id,
      'localStorage': localStorage.toMap(),
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
      availabilityZones: (map['availabilityZones'] as List).cast<String>(),
      burstableInstance: GetInstanceTypesInstanceTypeBurstableInstance.fromMap((map['burstableInstance'] as Map).cast<String, dynamic>()),
      cpuCoreCount: map['cpuCoreCount'] as int,
      eniAmount: map['eniAmount'] as int,
      eniIpv6AddressQuantity: map['eniIpv6AddressQuantity'] as int,
      eniPrivateIpAddressQuantity: map['eniPrivateIpAddressQuantity'] as int,
      eniQuantity: map['eniQuantity'] as int,
      family: map['family'] as String,
      gpu: GetInstanceTypesInstanceTypeGpu.fromMap((map['gpu'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      localStorage: GetInstanceTypesInstanceTypeLocalStorage.fromMap((map['localStorage'] as Map).cast<String, dynamic>()),
      maximumQueueNumberPerEni: map['maximumQueueNumberPerEni'] as int,
      memorySize: map['memorySize'] as double,
      nvmeSupport: map['nvmeSupport'] as String,
      price: map['price'] as String,
      primaryEniQueueNumber: map['primaryEniQueueNumber'] as int,
      secondaryEniQueueNumber: map['secondaryEniQueueNumber'] as int,
      totalEniQueueQuantity: map['totalEniQueueQuantity'] as int,
    );
  }
}

