// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'estimated_vmprices_response.dart';

/// Describes the properties of a VM size.
class VirtualMachineSizeResponse {
  /// The estimated price information for using a VM.
  final pulumi.Input<EstimatedVMPricesResponse>? estimatedVMPrices;
  /// The family name of the virtual machine size.
  final pulumi.Input<String> family;
  /// The number of gPUs supported by the virtual machine size.
  final pulumi.Input<int> gpus;
  /// Specifies if the virtual machine size supports low priority VMs.
  final pulumi.Input<bool> lowPriorityCapable;
  /// The resource volume size, in MB, allowed by the virtual machine size.
  final pulumi.Input<int> maxResourceVolumeMB;
  /// The amount of memory, in GB, supported by the virtual machine size.
  final pulumi.Input<double> memoryGB;
  /// The name of the virtual machine size.
  final pulumi.Input<String> name;
  /// The OS VHD disk size, in MB, allowed by the virtual machine size.
  final pulumi.Input<int> osVhdSizeMB;
  /// Specifies if the virtual machine size supports premium IO.
  final pulumi.Input<bool> premiumIO;
  /// Specifies the compute types supported by the virtual machine size.
  final pulumi.Input<List<String>>? supportedComputeTypes;
  /// The number of vCPUs supported by the virtual machine size.
  final pulumi.Input<int> vCPUs;

  /// Creates a new [VirtualMachineSizeResponse].
  /// [estimatedVMPrices] The estimated price information for using a VM.
  /// [family] The family name of the virtual machine size.
  /// [gpus] The number of gPUs supported by the virtual machine size.
  /// [lowPriorityCapable] Specifies if the virtual machine size supports low priority VMs.
  /// [maxResourceVolumeMB] The resource volume size, in MB, allowed by the virtual machine size.
  /// [memoryGB] The amount of memory, in GB, supported by the virtual machine size.
  /// [name] The name of the virtual machine size.
  /// [osVhdSizeMB] The OS VHD disk size, in MB, allowed by the virtual machine size.
  /// [premiumIO] Specifies if the virtual machine size supports premium IO.
  /// [supportedComputeTypes] Specifies the compute types supported by the virtual machine size.
  /// [vCPUs] The number of vCPUs supported by the virtual machine size.
  VirtualMachineSizeResponse({
    this.estimatedVMPrices,
    required this.family,
    required this.gpus,
    required this.lowPriorityCapable,
    required this.maxResourceVolumeMB,
    required this.memoryGB,
    required this.name,
    required this.osVhdSizeMB,
    required this.premiumIO,
    this.supportedComputeTypes,
    required this.vCPUs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedVMPrices': ?pulumi.Input.mapOptionalInputValue<EstimatedVMPricesResponse, Map<String, dynamic>>(estimatedVMPrices, (value) => value.toMap()),
      'family': family,
      'gpus': gpus,
      'lowPriorityCapable': lowPriorityCapable,
      'maxResourceVolumeMB': maxResourceVolumeMB,
      'memoryGB': memoryGB,
      'name': name,
      'osVhdSizeMB': osVhdSizeMB,
      'premiumIO': premiumIO,
      'supportedComputeTypes': ?supportedComputeTypes,
      'vCPUs': vCPUs,
    };
  }

  factory VirtualMachineSizeResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineSizeResponse(
      estimatedVMPrices: map['estimatedVMPrices'] == null ? null : (EstimatedVMPricesResponse.fromMap((map['estimatedVMPrices']! as Map).cast<String, dynamic>())).input(),
      family: (map['family'] as String).input(),
      gpus: (map['gpus'] as int).input(),
      lowPriorityCapable: (map['lowPriorityCapable'] as bool).input(),
      maxResourceVolumeMB: (map['maxResourceVolumeMB'] as int).input(),
      memoryGB: (map['memoryGB'] as double).input(),
      name: (map['name'] as String).input(),
      osVhdSizeMB: (map['osVhdSizeMB'] as int).input(),
      premiumIO: (map['premiumIO'] as bool).input(),
      supportedComputeTypes: map['supportedComputeTypes'] == null ? null : ((map['supportedComputeTypes']! as List).cast<String>()).input(),
      vCPUs: (map['vCPUs'] as int).input(),
    );
  }
}

