// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_file_system_root_volume_configuration_nfs_exports_client_configuration.dart';

class OpenZfsFileSystemRootVolumeConfigurationNfsExports {
  /// A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See `client_configurations` Block for details.
  final pulumi.Input<List<OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration>> clientConfigurations;

  /// Creates a new [OpenZfsFileSystemRootVolumeConfigurationNfsExports].
  /// [clientConfigurations] A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See `client_configurations` Block for details.
  OpenZfsFileSystemRootVolumeConfigurationNfsExports({
    required this.clientConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfigurations': pulumi.Input.mapInputValue<List<OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration>, List<Map<String, dynamic>>>(clientConfigurations, (value) => pulumi.Input.encodeList<OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenZfsFileSystemRootVolumeConfigurationNfsExports.fromMap(Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfigurationNfsExports(
      clientConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration>(map['clientConfigurations']!, (value) => OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

