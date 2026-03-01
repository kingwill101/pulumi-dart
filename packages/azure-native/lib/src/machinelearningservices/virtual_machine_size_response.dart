// ignore_for_file: unused_element, unnecessary_cast

import 'estimated_vmprices_response.dart';

/// Describes the properties of a VM size.
class VirtualMachineSizeResponse {
  /// The estimated price information for using a VM.
  final EstimatedVMPricesResponse? estimatedVMPrices;
  /// The family name of the virtual machine size.
  final String family;
  /// The number of gPUs supported by the virtual machine size.
  final int gpus;
  /// Specifies if the virtual machine size supports low priority VMs.
  final bool lowPriorityCapable;
  /// The resource volume size, in MB, allowed by the virtual machine size.
  final int maxResourceVolumeMB;
  /// The amount of memory, in GB, supported by the virtual machine size.
  final double memoryGB;
  /// The name of the virtual machine size.
  final String name;
  /// The OS VHD disk size, in MB, allowed by the virtual machine size.
  final int osVhdSizeMB;
  /// Specifies if the virtual machine size supports premium IO.
  final bool premiumIO;
  /// Specifies the compute types supported by the virtual machine size.
  final List<String>? supportedComputeTypes;
  /// The number of vCPUs supported by the virtual machine size.
  final int vCPUs;

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
      'estimatedVMPrices': ?estimatedVMPrices == null ? null : estimatedVMPrices!.toMap(),
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
      estimatedVMPrices: map['estimatedVMPrices'] == null ? null : EstimatedVMPricesResponse.fromMap((map['estimatedVMPrices'] as Map).cast<String, dynamic>()),
      family: map['family'] as String,
      gpus: map['gpus'] as int,
      lowPriorityCapable: map['lowPriorityCapable'] as bool,
      maxResourceVolumeMB: map['maxResourceVolumeMB'] as int,
      memoryGB: map['memoryGB'] as double,
      name: map['name'] as String,
      osVhdSizeMB: map['osVhdSizeMB'] as int,
      premiumIO: map['premiumIO'] as bool,
      supportedComputeTypes: map['supportedComputeTypes'] == null ? null : (map['supportedComputeTypes'] as List).cast<String>(),
      vCPUs: map['vCPUs'] as int,
    );
  }
}

