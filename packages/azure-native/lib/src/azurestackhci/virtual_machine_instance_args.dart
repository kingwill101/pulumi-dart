// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'http_proxy_configuration.dart';
import 'managed_service_identity.dart';
import 'virtual_machine_instance_properties_hardware_profile.dart';
import 'virtual_machine_instance_properties_network_profile.dart';
import 'virtual_machine_instance_properties_os_profile.dart';
import 'virtual_machine_instance_properties_security_profile.dart';
import 'virtual_machine_instance_properties_storage_profile.dart';

/// {@template pulumi_azurestackhci_virtual_machine_instance_args_doc}
/// The set of arguments for VirtualMachineInstance.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_virtual_machine_instance_args_doc}
class VirtualMachineInstanceArgs {
  /// Boolean indicating whether this is an existing local virtual machine or if one should be created.
  final pulumi.Input<bool>? createFromLocal;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// HardwareProfile - Specifies the hardware settings for the virtual machine instance.
  final pulumi.Input<VirtualMachineInstancePropertiesHardwareProfile>? hardwareProfile;
  /// HTTP Proxy configuration for the VM.
  final pulumi.Input<HttpProxyConfiguration>? httpProxyConfig;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// NetworkProfile - describes the network configuration the virtual machine instance
  final pulumi.Input<VirtualMachineInstancePropertiesNetworkProfile>? networkProfile;
  /// OsProfile - describes the configuration of the operating system and sets login data
  final pulumi.Input<VirtualMachineInstancePropertiesOsProfile>? osProfile;
  /// Unique identifier defined by ARC to identify the guest of the VM.
  final pulumi.Input<String>? resourceUid;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// SecurityProfile - Specifies the security settings for the virtual machine instance.
  final pulumi.Input<VirtualMachineInstancePropertiesSecurityProfile>? securityProfile;
  /// StorageProfile - contains information about the disks and storage information for the virtual machine instance
  final pulumi.Input<VirtualMachineInstancePropertiesStorageProfile>? storageProfile;

  /// Creates a new [VirtualMachineInstanceArgs].
  /// [createFromLocal] Boolean indicating whether this is an existing local virtual machine or if one should be created.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [hardwareProfile] HardwareProfile - Specifies the hardware settings for the virtual machine instance.
  /// [httpProxyConfig] HTTP Proxy configuration for the VM.
  /// [identity] The managed service identities assigned to this resource.
  /// [networkProfile] NetworkProfile - describes the network configuration the virtual machine instance
  /// [osProfile] OsProfile - describes the configuration of the operating system and sets login data
  /// [resourceUid] Unique identifier defined by ARC to identify the guest of the VM.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [securityProfile] SecurityProfile - Specifies the security settings for the virtual machine instance.
  /// [storageProfile] StorageProfile - contains information about the disks and storage information for the virtual machine instance
  VirtualMachineInstanceArgs({
    bool? createFromLocal,
    ExtendedLocation? extendedLocation,
    VirtualMachineInstancePropertiesHardwareProfile? hardwareProfile,
    HttpProxyConfiguration? httpProxyConfig,
    ManagedServiceIdentity? identity,
    VirtualMachineInstancePropertiesNetworkProfile? networkProfile,
    VirtualMachineInstancePropertiesOsProfile? osProfile,
    String? resourceUid,
    required String resourceUri,
    VirtualMachineInstancePropertiesSecurityProfile? securityProfile,
    VirtualMachineInstancePropertiesStorageProfile? storageProfile,
  }) :
      createFromLocal = pulumi.Input.asOptionalInput<bool>(createFromLocal),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      hardwareProfile = pulumi.Input.asOptionalInput<VirtualMachineInstancePropertiesHardwareProfile>(hardwareProfile),
      httpProxyConfig = pulumi.Input.asOptionalInput<HttpProxyConfiguration>(httpProxyConfig),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      networkProfile = pulumi.Input.asOptionalInput<VirtualMachineInstancePropertiesNetworkProfile>(networkProfile),
      osProfile = pulumi.Input.asOptionalInput<VirtualMachineInstancePropertiesOsProfile>(osProfile),
      resourceUid = pulumi.Input.asOptionalInput<String>(resourceUid),
      resourceUri = pulumi.Input.asInput<String>(resourceUri),
      securityProfile = pulumi.Input.asOptionalInput<VirtualMachineInstancePropertiesSecurityProfile>(securityProfile),
      storageProfile = pulumi.Input.asOptionalInput<VirtualMachineInstancePropertiesStorageProfile>(storageProfile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createFromLocal': ?createFromLocal,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesHardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'httpProxyConfig': ?pulumi.Input.mapOptionalInputValue<HttpProxyConfiguration, Map<String, dynamic>>(httpProxyConfig, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'resourceUid': ?resourceUid,
      'resourceUri': resourceUri,
      'securityProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesSecurityProfile, Map<String, dynamic>>(securityProfile, (value) => value.toMap()),
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesStorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstanceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstanceArgs(
      createFromLocal: map['createFromLocal'] == null ? null : map['createFromLocal'] as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : VirtualMachineInstancePropertiesHardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>()),
      httpProxyConfig: map['httpProxyConfig'] == null ? null : HttpProxyConfiguration.fromMap((map['httpProxyConfig'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      networkProfile: map['networkProfile'] == null ? null : VirtualMachineInstancePropertiesNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : VirtualMachineInstancePropertiesOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      resourceUid: map['resourceUid'] == null ? null : map['resourceUid'] as String,
      resourceUri: map['resourceUri'] as String,
      securityProfile: map['securityProfile'] == null ? null : VirtualMachineInstancePropertiesSecurityProfile.fromMap((map['securityProfile'] as Map).cast<String, dynamic>()),
      storageProfile: map['storageProfile'] == null ? null : VirtualMachineInstancePropertiesStorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
    );
  }
}

