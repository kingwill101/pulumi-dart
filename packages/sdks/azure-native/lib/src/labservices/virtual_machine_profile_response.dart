// ignore_for_file: unused_element, unnecessary_cast

import 'credentials_response.dart';
import 'image_reference_response.dart';
import 'sku_response.dart';
import 'virtual_machine_additional_capabilities_response.dart';

/// The base virtual machine configuration for a lab.
class VirtualMachineProfileResponse {
  /// Additional VM capabilities.
  final VirtualMachineAdditionalCapabilitiesResponse? additionalCapabilities;
  /// Credentials for the admin user on the VM.
  final CredentialsResponse adminUser;
  /// Indicates what lab virtual machines are created from.
  final String createOption;
  /// The image configuration for lab virtual machines.
  final ImageReferenceResponse imageReference;
  /// Credentials for the non-admin user on the VM, if one exists.
  final CredentialsResponse? nonAdminUser;
  /// The OS type of the image
  final String osType;
  /// The SKU for the lab. Defines the type of virtual machines used in the lab.
  final SkuResponse sku;
  /// The initial quota alloted to each lab user. Must be a time span between 0 and 9999 hours.
  final String usageQuota;
  /// Enabling this option will use the same password for all user VMs.
  final String? useSharedPassword;

  /// Creates a new [VirtualMachineProfileResponse].
  /// [additionalCapabilities] Additional VM capabilities.
  /// [adminUser] Credentials for the admin user on the VM.
  /// [createOption] Indicates what lab virtual machines are created from.
  /// [imageReference] The image configuration for lab virtual machines.
  /// [nonAdminUser] Credentials for the non-admin user on the VM, if one exists.
  /// [osType] The OS type of the image
  /// [sku] The SKU for the lab. Defines the type of virtual machines used in the lab.
  /// [usageQuota] The initial quota alloted to each lab user. Must be a time span between 0 and 9999 hours.
  /// [useSharedPassword] Enabling this option will use the same password for all user VMs.
  VirtualMachineProfileResponse({
    this.additionalCapabilities,
    required this.adminUser,
    required this.createOption,
    required this.imageReference,
    this.nonAdminUser,
    required this.osType,
    required this.sku,
    required this.usageQuota,
    this.useSharedPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?additionalCapabilities == null ? null : additionalCapabilities!.toMap(),
      'adminUser': adminUser.toMap(),
      'createOption': createOption,
      'imageReference': imageReference.toMap(),
      'nonAdminUser': ?nonAdminUser == null ? null : nonAdminUser!.toMap(),
      'osType': osType,
      'sku': sku.toMap(),
      'usageQuota': usageQuota,
      'useSharedPassword': ?useSharedPassword,
    };
  }

  factory VirtualMachineProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineProfileResponse(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : VirtualMachineAdditionalCapabilitiesResponse.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>()),
      adminUser: CredentialsResponse.fromMap((map['adminUser'] as Map).cast<String, dynamic>()),
      createOption: map['createOption'] as String,
      imageReference: ImageReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      nonAdminUser: map['nonAdminUser'] == null ? null : CredentialsResponse.fromMap((map['nonAdminUser'] as Map).cast<String, dynamic>()),
      osType: map['osType'] as String,
      sku: SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      usageQuota: map['usageQuota'] as String,
      useSharedPassword: map['useSharedPassword'] == null ? null : map['useSharedPassword'] as String,
    );
  }
}

