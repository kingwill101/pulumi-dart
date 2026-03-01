// ignore_for_file: unused_element, unnecessary_cast

import 'vmattribute_min_max_double.dart';
import 'vmattribute_min_max_integer.dart';

/// VMAttributes that will be used to filter VMSizes which will be used to build Fleet.
class VMAttributes {
  /// The range of accelerator count specified from min to max. Optional parameter. Either Min or Max is required if specified.
  /// acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final VMAttributeMinMaxInteger? acceleratorCount;
  /// The accelerator manufacturers specified as a list.
  /// acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final List<String>? acceleratorManufacturers;
  /// Specifies whether the VMSize supporting accelerator should be used to build Fleet or not.
  /// acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final String? acceleratorSupport;
  /// The accelerator types specified as a list. acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final List<String>? acceleratorTypes;
  /// The VM architecture types specified as a list. Optional parameter.
  final List<String>? architectureTypes;
  /// Specifies whether the VMSize supporting burstable capability should be used to build Fleet or not.
  final String? burstableSupport;
  /// The VM CPU manufacturers specified as a list. Optional parameter.
  final List<String>? cpuManufacturers;
  /// The range of data disk count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  final VMAttributeMinMaxInteger? dataDiskCount;
  /// Specifies which VMSizes should be excluded while building Fleet. Optional parameter.
  final List<String>? excludedVMSizes;
  /// The local storage disk types specified as a list. LocalStorageSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If localStorageSupport is "Excluded", this VMAttribute can not be used.
  final List<String>? localStorageDiskTypes;
  /// LocalStorageSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If localStorageSupport is "Excluded", this VMAttribute can not be used.
  final VMAttributeMinMaxDouble? localStorageInGiB;
  /// Specifies whether the VMSize supporting local storage should be used to build Fleet or not.
  /// Included - Default if not specified as most Azure VMs support local storage.
  final String? localStorageSupport;
  /// The range of memory specified from Min to Max. Must be specified if VMAttributes are specified, either Min or Max is required if specified.
  final VMAttributeMinMaxDouble memoryInGiB;
  /// The range of memory in GiB per vCPU specified from min to max. Optional parameter. Either Min or Max is required if specified.
  final VMAttributeMinMaxDouble? memoryInGiBPerVCpu;
  /// The range of network bandwidth in Mbps specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  final VMAttributeMinMaxDouble? networkBandwidthInMbps;
  /// The range of network interface count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  final VMAttributeMinMaxInteger? networkInterfaceCount;
  /// The range of RDMA (Remote Direct Memory Access) network interface count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  /// rdmaSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If rdmaSupport is "Excluded", this VMAttribute can not be used.
  final VMAttributeMinMaxInteger? rdmaNetworkInterfaceCount;
  /// Specifies whether the VMSize supporting RDMA (Remote Direct Memory Access) should be used to build Fleet or not.
  final String? rdmaSupport;
  /// The range of vCpuCount specified from Min to Max. Must be specified if VMAttributes are specified, either Min or Max is required if specified.
  final VMAttributeMinMaxInteger vCpuCount;
  /// The VM category specified as a list. Optional parameter.
  final List<String>? vmCategories;

  /// Creates a new [VMAttributes].
  /// [acceleratorCount] The range of accelerator count specified from min to max. Optional parameter. Either Min or Max is required if specified.
  /// [acceleratorManufacturers] The accelerator manufacturers specified as a list.
  /// [acceleratorSupport] Specifies whether the VMSize supporting accelerator should be used to build Fleet or not.
  /// [acceleratorTypes] The accelerator types specified as a list. acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// [architectureTypes] The VM architecture types specified as a list. Optional parameter.
  /// [burstableSupport] Specifies whether the VMSize supporting burstable capability should be used to build Fleet or not.
  /// [cpuManufacturers] The VM CPU manufacturers specified as a list. Optional parameter.
  /// [dataDiskCount] The range of data disk count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  /// [excludedVMSizes] Specifies which VMSizes should be excluded while building Fleet. Optional parameter.
  /// [localStorageDiskTypes] The local storage disk types specified as a list. LocalStorageSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// [localStorageInGiB] LocalStorageSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// [localStorageSupport] Specifies whether the VMSize supporting local storage should be used to build Fleet or not.
  /// [memoryInGiB] The range of memory specified from Min to Max. Must be specified if VMAttributes are specified, either Min or Max is required if specified.
  /// [memoryInGiBPerVCpu] The range of memory in GiB per vCPU specified from min to max. Optional parameter. Either Min or Max is required if specified.
  /// [networkBandwidthInMbps] The range of network bandwidth in Mbps specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  /// [networkInterfaceCount] The range of network interface count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  /// [rdmaNetworkInterfaceCount] The range of RDMA (Remote Direct Memory Access) network interface count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  /// [rdmaSupport] Specifies whether the VMSize supporting RDMA (Remote Direct Memory Access) should be used to build Fleet or not.
  /// [vCpuCount] The range of vCpuCount specified from Min to Max. Must be specified if VMAttributes are specified, either Min or Max is required if specified.
  /// [vmCategories] The VM category specified as a list. Optional parameter.
  VMAttributes({
    this.acceleratorCount,
    this.acceleratorManufacturers,
    this.acceleratorSupport,
    this.acceleratorTypes,
    this.architectureTypes,
    this.burstableSupport,
    this.cpuManufacturers,
    this.dataDiskCount,
    this.excludedVMSizes,
    this.localStorageDiskTypes,
    this.localStorageInGiB,
    this.localStorageSupport,
    required this.memoryInGiB,
    this.memoryInGiBPerVCpu,
    this.networkBandwidthInMbps,
    this.networkInterfaceCount,
    this.rdmaNetworkInterfaceCount,
    this.rdmaSupport,
    required this.vCpuCount,
    this.vmCategories,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorCount': ?acceleratorCount == null ? null : acceleratorCount!.toMap(),
      'acceleratorManufacturers': ?acceleratorManufacturers,
      'acceleratorSupport': ?acceleratorSupport,
      'acceleratorTypes': ?acceleratorTypes,
      'architectureTypes': ?architectureTypes,
      'burstableSupport': ?burstableSupport,
      'cpuManufacturers': ?cpuManufacturers,
      'dataDiskCount': ?dataDiskCount == null ? null : dataDiskCount!.toMap(),
      'excludedVMSizes': ?excludedVMSizes,
      'localStorageDiskTypes': ?localStorageDiskTypes,
      'localStorageInGiB': ?localStorageInGiB == null ? null : localStorageInGiB!.toMap(),
      'localStorageSupport': ?localStorageSupport,
      'memoryInGiB': memoryInGiB.toMap(),
      'memoryInGiBPerVCpu': ?memoryInGiBPerVCpu == null ? null : memoryInGiBPerVCpu!.toMap(),
      'networkBandwidthInMbps': ?networkBandwidthInMbps == null ? null : networkBandwidthInMbps!.toMap(),
      'networkInterfaceCount': ?networkInterfaceCount == null ? null : networkInterfaceCount!.toMap(),
      'rdmaNetworkInterfaceCount': ?rdmaNetworkInterfaceCount == null ? null : rdmaNetworkInterfaceCount!.toMap(),
      'rdmaSupport': ?rdmaSupport,
      'vCpuCount': vCpuCount.toMap(),
      'vmCategories': ?vmCategories,
    };
  }

  factory VMAttributes.fromMap(Map<String, dynamic> map) {
    return VMAttributes(
      acceleratorCount: map['acceleratorCount'] == null ? null : VMAttributeMinMaxInteger.fromMap((map['acceleratorCount'] as Map).cast<String, dynamic>()),
      acceleratorManufacturers: map['acceleratorManufacturers'] == null ? null : (map['acceleratorManufacturers'] as List).cast<String>(),
      acceleratorSupport: map['acceleratorSupport'] == null ? null : map['acceleratorSupport'] as String,
      acceleratorTypes: map['acceleratorTypes'] == null ? null : (map['acceleratorTypes'] as List).cast<String>(),
      architectureTypes: map['architectureTypes'] == null ? null : (map['architectureTypes'] as List).cast<String>(),
      burstableSupport: map['burstableSupport'] == null ? null : map['burstableSupport'] as String,
      cpuManufacturers: map['cpuManufacturers'] == null ? null : (map['cpuManufacturers'] as List).cast<String>(),
      dataDiskCount: map['dataDiskCount'] == null ? null : VMAttributeMinMaxInteger.fromMap((map['dataDiskCount'] as Map).cast<String, dynamic>()),
      excludedVMSizes: map['excludedVMSizes'] == null ? null : (map['excludedVMSizes'] as List).cast<String>(),
      localStorageDiskTypes: map['localStorageDiskTypes'] == null ? null : (map['localStorageDiskTypes'] as List).cast<String>(),
      localStorageInGiB: map['localStorageInGiB'] == null ? null : VMAttributeMinMaxDouble.fromMap((map['localStorageInGiB'] as Map).cast<String, dynamic>()),
      localStorageSupport: map['localStorageSupport'] == null ? null : map['localStorageSupport'] as String,
      memoryInGiB: VMAttributeMinMaxDouble.fromMap((map['memoryInGiB'] as Map).cast<String, dynamic>()),
      memoryInGiBPerVCpu: map['memoryInGiBPerVCpu'] == null ? null : VMAttributeMinMaxDouble.fromMap((map['memoryInGiBPerVCpu'] as Map).cast<String, dynamic>()),
      networkBandwidthInMbps: map['networkBandwidthInMbps'] == null ? null : VMAttributeMinMaxDouble.fromMap((map['networkBandwidthInMbps'] as Map).cast<String, dynamic>()),
      networkInterfaceCount: map['networkInterfaceCount'] == null ? null : VMAttributeMinMaxInteger.fromMap((map['networkInterfaceCount'] as Map).cast<String, dynamic>()),
      rdmaNetworkInterfaceCount: map['rdmaNetworkInterfaceCount'] == null ? null : VMAttributeMinMaxInteger.fromMap((map['rdmaNetworkInterfaceCount'] as Map).cast<String, dynamic>()),
      rdmaSupport: map['rdmaSupport'] == null ? null : map['rdmaSupport'] as String,
      vCpuCount: VMAttributeMinMaxInteger.fromMap((map['vCpuCount'] as Map).cast<String, dynamic>()),
      vmCategories: map['vmCategories'] == null ? null : (map['vmCategories'] as List).cast<String>(),
    );
  }
}

