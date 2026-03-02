// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credentials_response.dart';
import 'image_reference_response.dart';
import 'sku_response.dart';
import 'virtual_machine_additional_capabilities_response.dart';

/// The base virtual machine configuration for a lab.
class VirtualMachineProfileResponse {
  /// Additional VM capabilities.
  final pulumi.Input<VirtualMachineAdditionalCapabilitiesResponse>? additionalCapabilities;
  /// Credentials for the admin user on the VM.
  final pulumi.Input<CredentialsResponse> adminUser;
  /// Indicates what lab virtual machines are created from.
  final pulumi.Input<String> createOption;
  /// The image configuration for lab virtual machines.
  final pulumi.Input<ImageReferenceResponse> imageReference;
  /// Credentials for the non-admin user on the VM, if one exists.
  final pulumi.Input<CredentialsResponse>? nonAdminUser;
  /// The OS type of the image
  final pulumi.Input<String> osType;
  /// The SKU for the lab. Defines the type of virtual machines used in the lab.
  final pulumi.Input<SkuResponse> sku;
  /// The initial quota alloted to each lab user. Must be a time span between 0 and 9999 hours.
  final pulumi.Input<String> usageQuota;
  /// Enabling this option will use the same password for all user VMs.
  final pulumi.Input<String>? useSharedPassword;

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
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAdditionalCapabilitiesResponse, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'adminUser': pulumi.Input.mapInputValue<CredentialsResponse, Map<String, dynamic>>(adminUser, (value) => value.toMap()),
      'createOption': createOption,
      'imageReference': pulumi.Input.mapInputValue<ImageReferenceResponse, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'nonAdminUser': ?pulumi.Input.mapOptionalInputValue<CredentialsResponse, Map<String, dynamic>>(nonAdminUser, (value) => value.toMap()),
      'osType': osType,
      'sku': pulumi.Input.mapInputValue<SkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'usageQuota': usageQuota,
      'useSharedPassword': ?useSharedPassword,
    };
  }

  factory VirtualMachineProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineProfileResponse(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : (VirtualMachineAdditionalCapabilitiesResponse.fromMap((map['additionalCapabilities']! as Map).cast<String, dynamic>())).input(),
      adminUser: (CredentialsResponse.fromMap((map['adminUser'] as Map).cast<String, dynamic>())).input(),
      createOption: (map['createOption'] as String).input(),
      imageReference: (ImageReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>())).input(),
      nonAdminUser: map['nonAdminUser'] == null ? null : (CredentialsResponse.fromMap((map['nonAdminUser']! as Map).cast<String, dynamic>())).input(),
      osType: (map['osType'] as String).input(),
      sku: (SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      usageQuota: (map['usageQuota'] as String).input(),
      useSharedPassword: map['useSharedPassword'] == null ? null : (map['useSharedPassword']! as String).input(),
    );
  }
}

