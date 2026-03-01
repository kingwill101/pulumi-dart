// ignore_for_file: unused_element, unnecessary_cast

import 'aml_filesystem_container_storage_interface_response.dart';

/// AML file system client information
class AmlFilesystemClientInfoResponse {
  /// Container Storage Interface information for the AML file system.
  final AmlFilesystemContainerStorageInterfaceResponse containerStorageInterface;
  /// The version of Lustre running in the AML file system
  final String lustreVersion;
  /// The IPv4 address used by clients to mount the AML file system's Lustre Management Service (MGS).
  final String mgsAddress;
  /// Recommended command to mount the AML file system
  final String mountCommand;

  /// Creates a new [AmlFilesystemClientInfoResponse].
  /// [containerStorageInterface] Container Storage Interface information for the AML file system.
  /// [lustreVersion] The version of Lustre running in the AML file system
  /// [mgsAddress] The IPv4 address used by clients to mount the AML file system's Lustre Management Service (MGS).
  /// [mountCommand] Recommended command to mount the AML file system
  AmlFilesystemClientInfoResponse({
    required this.containerStorageInterface,
    required this.lustreVersion,
    required this.mgsAddress,
    required this.mountCommand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerStorageInterface': containerStorageInterface.toMap(),
      'lustreVersion': lustreVersion,
      'mgsAddress': mgsAddress,
      'mountCommand': mountCommand,
    };
  }

  factory AmlFilesystemClientInfoResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemClientInfoResponse(
      containerStorageInterface: AmlFilesystemContainerStorageInterfaceResponse.fromMap((map['containerStorageInterface'] as Map).cast<String, dynamic>()),
      lustreVersion: map['lustreVersion'] as String,
      mgsAddress: map['mgsAddress'] as String,
      mountCommand: map['mountCommand'] as String,
    );
  }
}

