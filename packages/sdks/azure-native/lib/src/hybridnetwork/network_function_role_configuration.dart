// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_profile.dart';
import 'network_interface.dart';
import 'os_profile.dart';
import 'storage_profile.dart';

/// Network function role configuration.
class NetworkFunctionRoleConfiguration {
  /// Specifies the custom settings for the virtual machine.
  final pulumi.Input<CustomProfile>? customProfile;

  /// The network interface configurations.
  final pulumi.Input<List<NetworkInterface>>? networkInterfaces;

  /// Specifies the operating system settings for the role instance. This value can be updated during the deployment of network function.
  final pulumi.Input<OsProfile>? osProfile;

  /// The name of the network function role.
  final pulumi.Input<String>? roleName;

  /// Role type.
  final pulumi.Input<String>? roleType;

  /// Specifies the storage settings for the virtual machine disks.
  final pulumi.Input<StorageProfile>? storageProfile;

  /// The user parameters for customers. The format of user data parameters has to be matched with the provided user data template.
  final pulumi.Input<dynamic>? userDataParameters;

  /// The user data template for customers. This is a json schema template describing the format and data type of user data parameters.
  final pulumi.Input<dynamic>? userDataTemplate;

  /// The size of the virtual machine.
  final pulumi.Input<String>? virtualMachineSize;

  /// Creates a new [NetworkFunctionRoleConfiguration].
  /// [customProfile] Specifies the custom settings for the virtual machine.
  /// [networkInterfaces] The network interface configurations.
  /// [osProfile] Specifies the operating system settings for the role instance. This value can be updated during the deployment of network function.
  /// [roleName] The name of the network function role.
  /// [roleType] Role type.
  /// [storageProfile] Specifies the storage settings for the virtual machine disks.
  /// [userDataParameters] The user parameters for customers. The format of user data parameters has to be matched with the provided user data template.
  /// [userDataTemplate] The user data template for customers. This is a json schema template describing the format and data type of user data parameters.
  /// [virtualMachineSize] The size of the virtual machine.
  NetworkFunctionRoleConfiguration({
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
      'customProfile':
          ?pulumi.Input.mapOptionalInputValue<
            CustomProfile,
            Map<String, dynamic>
          >(customProfile, (value) => value.toMap()),
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<NetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<NetworkInterface, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'osProfile':
          ?pulumi.Input.mapOptionalInputValue<OsProfile, Map<String, dynamic>>(
            osProfile,
            (value) => value.toMap(),
          ),
      'roleName': ?roleName,
      'roleType': ?roleType,
      'storageProfile':
          ?pulumi.Input.mapOptionalInputValue<
            StorageProfile,
            Map<String, dynamic>
          >(storageProfile, (value) => value.toMap()),
      'userDataParameters': ?userDataParameters,
      'userDataTemplate': ?userDataTemplate,
      'virtualMachineSize': ?virtualMachineSize,
    };
  }

  factory NetworkFunctionRoleConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionRoleConfiguration(
      customProfile: (() {
        final guardedValue = map['customProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      networkInterfaces: (() {
        final guardedValue = map['networkInterfaces'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NetworkInterface>(
            guardedValue,
            (value) => NetworkInterface.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      osProfile: (() {
        final guardedValue = map['osProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OsProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      roleName: (() {
        final guardedValue = map['roleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleType: (() {
        final guardedValue = map['roleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageProfile: (() {
        final guardedValue = map['storageProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StorageProfile.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      userDataParameters: (() {
        final guardedValue = map['userDataParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      userDataTemplate: (() {
        final guardedValue = map['userDataTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      virtualMachineSize: (() {
        final guardedValue = map['virtualMachineSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
