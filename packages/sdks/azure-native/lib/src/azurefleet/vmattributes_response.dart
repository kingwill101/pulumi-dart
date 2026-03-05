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
      acceleratorCount: (() { final guardedValue = map['acceleratorCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxIntegerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      acceleratorManufacturers: (() { final guardedValue = map['acceleratorManufacturers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      acceleratorSupport: (() { final guardedValue = map['acceleratorSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      acceleratorTypes: (() { final guardedValue = map['acceleratorTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      architectureTypes: (() { final guardedValue = map['architectureTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      burstableSupport: (() { final guardedValue = map['burstableSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuManufacturers: (() { final guardedValue = map['cpuManufacturers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataDiskCount: (() { final guardedValue = map['dataDiskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxIntegerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludedVMSizes: (() { final guardedValue = map['excludedVMSizes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      localStorageDiskTypes: (() { final guardedValue = map['localStorageDiskTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      localStorageInGiB: (() { final guardedValue = map['localStorageInGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxDoubleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localStorageSupport: (() { final guardedValue = map['localStorageSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryInGiB: pulumi.Input.fromValue(VMAttributeMinMaxDoubleResponse.fromMap((map['memoryInGiB']! as Map).cast<String, dynamic>())),
      memoryInGiBPerVCpu: (() { final guardedValue = map['memoryInGiBPerVCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxDoubleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkBandwidthInMbps: (() { final guardedValue = map['networkBandwidthInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxDoubleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      networkInterfaceCount: (() { final guardedValue = map['networkInterfaceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxIntegerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdmaNetworkInterfaceCount: (() { final guardedValue = map['rdmaNetworkInterfaceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMAttributeMinMaxIntegerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdmaSupport: (() { final guardedValue = map['rdmaSupport']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vCpuCount: pulumi.Input.fromValue(VMAttributeMinMaxIntegerResponse.fromMap((map['vCpuCount']! as Map).cast<String, dynamic>())),
      vmCategories: (() { final guardedValue = map['vmCategories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

