// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_profile_response.dart';
import 'network_interface_response.dart';
import 'os_profile_response.dart';
import 'storage_profile_response.dart';

/// Network function role configuration.
class NetworkFunctionRoleConfigurationResponse {
  /// Specifies the custom settings for the virtual machine.
  final CustomProfileResponse? customProfile;
  /// The network interface configurations.
  final List<NetworkInterfaceResponse>? networkInterfaces;
  /// Specifies the operating system settings for the role instance. This value can be updated during the deployment of network function.
  final OsProfileResponse? osProfile;
  /// The name of the network function role.
  final String? roleName;
  /// Role type.
  final String? roleType;
  /// Specifies the storage settings for the virtual machine disks.
  final StorageProfileResponse? storageProfile;
  /// The user parameters for customers. The format of user data parameters has to be matched with the provided user data template.
  final dynamic userDataParameters;
  /// The user data template for customers. This is a json schema template describing the format and data type of user data parameters.
  final dynamic userDataTemplate;
  /// The size of the virtual machine.
  final String? virtualMachineSize;

  /// Creates a new [NetworkFunctionRoleConfigurationResponse].
  /// [customProfile] Specifies the custom settings for the virtual machine.
  /// [networkInterfaces] The network interface configurations.
  /// [osProfile] Specifies the operating system settings for the role instance. This value can be updated during the deployment of network function.
  /// [roleName] The name of the network function role.
  /// [roleType] Role type.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [userDataParameters] The user parameters for customers. The format of user data parameters has to be matched with the provided user data template.
  /// [userDataTemplate] The user data template for customers. This is a json schema template describing the format and data type of user data parameters.
  /// [virtualMachineSize] The size of the virtual machine.
  NetworkFunctionRoleConfigurationResponse({
    this.customProfile,
    this.networkInterfaces,
    this.osProfile,
    this.roleName,
    this.roleType,
    this.storageProfile,
    this.userDataParameters,
    this.userDataTemplate,
    this.virtualMachineSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customProfile': ?customProfile == null ? null : customProfile!.toMap(),
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaceResponse, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'roleName': ?roleName,
      'roleType': ?roleType,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'userDataParameters': ?userDataParameters,
      'userDataTemplate': ?userDataTemplate,
      'virtualMachineSize': ?virtualMachineSize,
    };
  }

  factory NetworkFunctionRoleConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionRoleConfigurationResponse(
      customProfile: map['customProfile'] == null ? null : CustomProfileResponse.fromMap((map['customProfile'] as Map).cast<String, dynamic>()),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      osProfile: map['osProfile'] == null ? null : OsProfileResponse.fromMap((map['osProfile'] as Map).cast<String, dynamic>()),
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      roleType: map['roleType'] == null ? null : map['roleType'] as String,
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      userDataParameters: map['userDataParameters'] == null ? null : map['userDataParameters'],
      userDataTemplate: map['userDataTemplate'] == null ? null : map['userDataTemplate'],
      virtualMachineSize: map['virtualMachineSize'] == null ? null : map['virtualMachineSize'] as String,
    );
  }
}

