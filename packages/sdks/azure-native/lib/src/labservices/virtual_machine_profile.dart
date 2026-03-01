// ignore_for_file: unused_element, unnecessary_cast

import 'create_option.dart';
import 'credentials.dart';
import 'enable_state.dart';
import 'image_reference.dart';
import 'sku.dart';
import 'virtual_machine_additional_capabilities.dart';

/// The base virtual machine configuration for a lab.
class VirtualMachineProfile {
  /// Additional VM capabilities.
  final VirtualMachineAdditionalCapabilities? additionalCapabilities;
  /// Credentials for the admin user on the VM.
  final Credentials adminUser;
  /// Indicates what lab virtual machines are created from.
  final CreateOption createOption;
  /// The image configuration for lab virtual machines.
  final ImageReference imageReference;
  /// Credentials for the non-admin user on the VM, if one exists.
  final Credentials? nonAdminUser;
  /// The SKU for the lab. Defines the type of virtual machines used in the lab.
  final Sku sku;
  /// The initial quota alloted to each lab user. Must be a time span between 0 and 9999 hours.
  final String usageQuota;
  /// Enabling this option will use the same password for all user VMs.
  final EnableState? useSharedPassword;

  /// Creates a new [VirtualMachineProfile].
  /// [additionalCapabilities] Additional VM capabilities.
  /// [adminUser] Credentials for the admin user on the VM.
  /// [createOption] Indicates what lab virtual machines are created from.
  /// [imageReference] The image configuration for lab virtual machines.
  /// [nonAdminUser] Credentials for the non-admin user on the VM, if one exists.
  /// [sku] The SKU for the lab. Defines the type of virtual machines used in the lab.
  /// [usageQuota] The initial quota alloted to each lab user. Must be a time span between 0 and 9999 hours.
  /// [useSharedPassword] Enabling this option will use the same password for all user VMs.
  VirtualMachineProfile({
    this.additionalCapabilities,
    required this.adminUser,
    required this.createOption,
    required this.imageReference,
    this.nonAdminUser,
    required this.sku,
    required this.usageQuota,
    this.useSharedPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities == null ? null : additionalCapabilities!.toMap(),
      'adminUser': adminUser.toMap(),
      'createOption': createOption.value,
      'imageReference': imageReference.toMap(),
      'nonAdminUser': ?nonAdminUser == null ? null : nonAdminUser!.toMap(),
      'sku': sku.toMap(),
      'usageQuota': usageQuota,
      'useSharedPassword': ?useSharedPassword == null ? null : useSharedPassword!.value,
    };
  }

  factory VirtualMachineProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineProfile(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : VirtualMachineAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>()),
      adminUser: Credentials.fromMap((map['adminUser'] as Map).cast<String, dynamic>()),
      createOption: CreateOption.fromValue(map['createOption'] as String),
      imageReference: ImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      nonAdminUser: map['nonAdminUser'] == null ? null : Credentials.fromMap((map['nonAdminUser'] as Map).cast<String, dynamic>()),
      sku: Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      usageQuota: map['usageQuota'] as String,
      useSharedPassword: map['useSharedPassword'] == null ? null : EnableState.fromValue(map['useSharedPassword'] as String),
    );
  }
}

