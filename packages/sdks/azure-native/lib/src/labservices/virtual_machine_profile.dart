// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_option.dart';
import 'credentials.dart';
import 'enable_state.dart';
import 'image_reference.dart';
import 'sku.dart';
import 'virtual_machine_additional_capabilities.dart';

/// The base virtual machine configuration for a lab.
class VirtualMachineProfile {
  /// Additional VM capabilities.
  final pulumi.Input<VirtualMachineAdditionalCapabilities?>? additionalCapabilities;
  /// Credentials for the admin user on the VM.
  final pulumi.Input<Credentials> adminUser;
  /// Indicates what lab virtual machines are created from.
  final pulumi.Input<CreateOption> createOption;
  /// The image configuration for lab virtual machines.
  final pulumi.Input<ImageReference> imageReference;
  /// Credentials for the non-admin user on the VM, if one exists.
  final pulumi.Input<Credentials?>? nonAdminUser;
  /// The SKU for the lab. Defines the type of virtual machines used in the lab.
  final pulumi.Input<Sku> sku;
  /// The initial quota alloted to each lab user. Must be a time span between 0 and 9999 hours.
  final pulumi.Input<String> usageQuota;
  /// Enabling this option will use the same password for all user VMs.
  final pulumi.Input<EnableState?>? useSharedPassword;

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
    pulumi.Input<EnableState?>? useSharedPassword,
  }) : useSharedPassword = useSharedPassword ?? pulumi.Input.fromValue(EnableState.fromValue('Disabled'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'adminUser': pulumi.Input.mapInputValue<Credentials, Map<String, dynamic>>(adminUser, (value) => value.toMap()),
      'createOption': pulumi.Input.mapInputValue<CreateOption, String>(createOption, (value) => value.wireValue),
      'imageReference': pulumi.Input.mapInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'nonAdminUser': ?pulumi.Input.mapOptionalInputValue<Credentials, Map<String, dynamic>>(nonAdminUser, (value) => value.toMap()),
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'usageQuota': usageQuota,
      'useSharedPassword': ?pulumi.Input.mapOptionalInputValue<EnableState, String>(useSharedPassword, (value) => value.wireValue),
    };
  }

  factory VirtualMachineProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineProfile(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      adminUser: pulumi.Input.fromValue(Credentials.fromMap((map['adminUser']! as Map).cast<String, dynamic>())),
      createOption: pulumi.Input.fromValue(CreateOption.fromValue(map['createOption']! as String)),
      imageReference: pulumi.Input.fromValue(ImageReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())),
      nonAdminUser: (() { final guardedValue = map['nonAdminUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Credentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      usageQuota: pulumi.Input.fromValue(map['usageQuota'] as String),
      useSharedPassword: (() { final guardedValue = map['useSharedPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnableState.fromValue(guardedValue as String)); })(),
    );
  }
}
