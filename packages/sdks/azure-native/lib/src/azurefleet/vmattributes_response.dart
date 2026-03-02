// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmattribute_min_max_double_response.dart';
import 'vmattribute_min_max_integer_response.dart';

/// VMAttributes that will be used to filter VMSizes which will be used to build Fleet.
class VMAttributesResponse {
  /// The range of accelerator count specified from min to max. Optional parameter. Either Min or Max is required if specified.
  /// acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<VMAttributeMinMaxIntegerResponse>? acceleratorCount;
  /// The accelerator manufacturers specified as a list.
  /// acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<List<String>>? acceleratorManufacturers;
  /// Specifies whether the VMSize supporting accelerator should be used to build Fleet or not.
  /// acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<String>? acceleratorSupport;
  /// The accelerator types specified as a list. acceleratorSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If acceleratorSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<List<String>>? acceleratorTypes;
  /// The VM architecture types specified as a list. Optional parameter.
  final pulumi.Input<List<String>>? architectureTypes;
  /// Specifies whether the VMSize supporting burstable capability should be used to build Fleet or not.
  final pulumi.Input<String>? burstableSupport;
  /// The VM CPU manufacturers specified as a list. Optional parameter.
  final pulumi.Input<List<String>>? cpuManufacturers;
  /// The range of data disk count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  final pulumi.Input<VMAttributeMinMaxIntegerResponse>? dataDiskCount;
  /// Specifies which VMSizes should be excluded while building Fleet. Optional parameter.
  final pulumi.Input<List<String>>? excludedVMSizes;
  /// The local storage disk types specified as a list. LocalStorageSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If localStorageSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<List<String>>? localStorageDiskTypes;
  /// LocalStorageSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If localStorageSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<VMAttributeMinMaxDoubleResponse>? localStorageInGiB;
  /// Specifies whether the VMSize supporting local storage should be used to build Fleet or not.
  /// Included - Default if not specified as most Azure VMs support local storage.
  final pulumi.Input<String>? localStorageSupport;
  /// The range of memory specified from Min to Max. Must be specified if VMAttributes are specified, either Min or Max is required if specified.
  final pulumi.Input<VMAttributeMinMaxDoubleResponse> memoryInGiB;
  /// The range of memory in GiB per vCPU specified from min to max. Optional parameter. Either Min or Max is required if specified.
  final pulumi.Input<VMAttributeMinMaxDoubleResponse>? memoryInGiBPerVCpu;
  /// The range of network bandwidth in Mbps specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  final pulumi.Input<VMAttributeMinMaxDoubleResponse>? networkBandwidthInMbps;
  /// The range of network interface count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  final pulumi.Input<VMAttributeMinMaxIntegerResponse>? networkInterfaceCount;
  /// The range of RDMA (Remote Direct Memory Access) network interface count specified from Min to Max. Optional parameter. Either Min or Max is required if specified.
  /// rdmaSupport should be set to "Included" or "Required" to use this VMAttribute.
  /// If rdmaSupport is "Excluded", this VMAttribute can not be used.
  final pulumi.Input<VMAttributeMinMaxIntegerResponse>? rdmaNetworkInterfaceCount;
  /// Specifies whether the VMSize supporting RDMA (Remote Direct Memory Access) should be used to build Fleet or not.
  final pulumi.Input<String>? rdmaSupport;
  /// The range of vCpuCount specified from Min to Max. Must be specified if VMAttributes are specified, either Min or Max is required if specified.
  final pulumi.Input<VMAttributeMinMaxIntegerResponse> vCpuCount;
  /// The VM category specified as a list. Optional parameter.
  final pulumi.Input<List<String>>? vmCategories;

  /// Creates a new [VMAttributesResponse].
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
  VMAttributesResponse({
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
      'acceleratorCount': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxIntegerResponse, Map<String, dynamic>>(acceleratorCount, (value) => value.toMap()),
      'acceleratorManufacturers': ?acceleratorManufacturers,
      'acceleratorSupport': ?acceleratorSupport,
      'acceleratorTypes': ?acceleratorTypes,
      'architectureTypes': ?architectureTypes,
      'burstableSupport': ?burstableSupport,
      'cpuManufacturers': ?cpuManufacturers,
      'dataDiskCount': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxIntegerResponse, Map<String, dynamic>>(dataDiskCount, (value) => value.toMap()),
      'excludedVMSizes': ?excludedVMSizes,
      'localStorageDiskTypes': ?localStorageDiskTypes,
      'localStorageInGiB': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxDoubleResponse, Map<String, dynamic>>(localStorageInGiB, (value) => value.toMap()),
      'localStorageSupport': ?localStorageSupport,
      'memoryInGiB': pulumi.Input.mapInputValue<VMAttributeMinMaxDoubleResponse, Map<String, dynamic>>(memoryInGiB, (value) => value.toMap()),
      'memoryInGiBPerVCpu': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxDoubleResponse, Map<String, dynamic>>(memoryInGiBPerVCpu, (value) => value.toMap()),
      'networkBandwidthInMbps': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxDoubleResponse, Map<String, dynamic>>(networkBandwidthInMbps, (value) => value.toMap()),
      'networkInterfaceCount': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxIntegerResponse, Map<String, dynamic>>(networkInterfaceCount, (value) => value.toMap()),
      'rdmaNetworkInterfaceCount': ?pulumi.Input.mapOptionalInputValue<VMAttributeMinMaxIntegerResponse, Map<String, dynamic>>(rdmaNetworkInterfaceCount, (value) => value.toMap()),
      'rdmaSupport': ?rdmaSupport,
      'vCpuCount': pulumi.Input.mapInputValue<VMAttributeMinMaxIntegerResponse, Map<String, dynamic>>(vCpuCount, (value) => value.toMap()),
      'vmCategories': ?vmCategories,
    };
  }

  factory VMAttributesResponse.fromMap(Map<String, dynamic> map) {
    return VMAttributesResponse(
      acceleratorCount: map['acceleratorCount'] == null ? null : (VMAttributeMinMaxIntegerResponse.fromMap((map['acceleratorCount']! as Map).cast<String, dynamic>())).input(),
      acceleratorManufacturers: map['acceleratorManufacturers'] == null ? null : ((map['acceleratorManufacturers']! as List).cast<String>()).input(),
      acceleratorSupport: map['acceleratorSupport'] == null ? null : (map['acceleratorSupport']! as String).input(),
      acceleratorTypes: map['acceleratorTypes'] == null ? null : ((map['acceleratorTypes']! as List).cast<String>()).input(),
      architectureTypes: map['architectureTypes'] == null ? null : ((map['architectureTypes']! as List).cast<String>()).input(),
      burstableSupport: map['burstableSupport'] == null ? null : (map['burstableSupport']! as String).input(),
      cpuManufacturers: map['cpuManufacturers'] == null ? null : ((map['cpuManufacturers']! as List).cast<String>()).input(),
      dataDiskCount: map['dataDiskCount'] == null ? null : (VMAttributeMinMaxIntegerResponse.fromMap((map['dataDiskCount']! as Map).cast<String, dynamic>())).input(),
      excludedVMSizes: map['excludedVMSizes'] == null ? null : ((map['excludedVMSizes']! as List).cast<String>()).input(),
      localStorageDiskTypes: map['localStorageDiskTypes'] == null ? null : ((map['localStorageDiskTypes']! as List).cast<String>()).input(),
      localStorageInGiB: map['localStorageInGiB'] == null ? null : (VMAttributeMinMaxDoubleResponse.fromMap((map['localStorageInGiB']! as Map).cast<String, dynamic>())).input(),
      localStorageSupport: map['localStorageSupport'] == null ? null : (map['localStorageSupport']! as String).input(),
      memoryInGiB: (VMAttributeMinMaxDoubleResponse.fromMap((map['memoryInGiB'] as Map).cast<String, dynamic>())).input(),
      memoryInGiBPerVCpu: map['memoryInGiBPerVCpu'] == null ? null : (VMAttributeMinMaxDoubleResponse.fromMap((map['memoryInGiBPerVCpu']! as Map).cast<String, dynamic>())).input(),
      networkBandwidthInMbps: map['networkBandwidthInMbps'] == null ? null : (VMAttributeMinMaxDoubleResponse.fromMap((map['networkBandwidthInMbps']! as Map).cast<String, dynamic>())).input(),
      networkInterfaceCount: map['networkInterfaceCount'] == null ? null : (VMAttributeMinMaxIntegerResponse.fromMap((map['networkInterfaceCount']! as Map).cast<String, dynamic>())).input(),
      rdmaNetworkInterfaceCount: map['rdmaNetworkInterfaceCount'] == null ? null : (VMAttributeMinMaxIntegerResponse.fromMap((map['rdmaNetworkInterfaceCount']! as Map).cast<String, dynamic>())).input(),
      rdmaSupport: map['rdmaSupport'] == null ? null : (map['rdmaSupport']! as String).input(),
      vCpuCount: (VMAttributeMinMaxIntegerResponse.fromMap((map['vCpuCount'] as Map).cast<String, dynamic>())).input(),
      vmCategories: map['vmCategories'] == null ? null : ((map['vmCategories']! as List).cast<String>()).input(),
    );
  }
}

