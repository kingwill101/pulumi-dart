// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../open_zfs_file_system_root_volume_configuration_nfs_exports_client_configuration/open_zfs_file_system_root_volume_configuration_nfs_exports_client_configuration.dart';

class OpenZfsFileSystemRootVolumeConfigurationNfsExports {
  /// A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See <span pulumi-lang-nodejs="`clientConfigurations`" pulumi-lang-dotnet="`ClientConfigurations`" pulumi-lang-go="`clientConfigurations`" pulumi-lang-python="`client_configurations`" pulumi-lang-yaml="`clientConfigurations`" pulumi-lang-java="`clientConfigurations`">`client_configurations`</span> Block for details.
  final List<
          OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration>
      clientConfigurations;

  OpenZfsFileSystemRootVolumeConfigurationNfsExports({
    required this.clientConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientConfigurations'] = Input.encodeList<
        OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration,
        Map<String, dynamic>>(clientConfigurations, (value) => value.toMap());
    return map;
  }

  factory OpenZfsFileSystemRootVolumeConfigurationNfsExports.fromMap(
      Map<String, dynamic> map) {
    return OpenZfsFileSystemRootVolumeConfigurationNfsExports(
      clientConfigurations: Input.decodeList<
              OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration>(
          map['clientConfigurations'],
          (value) =>
              OpenZfsFileSystemRootVolumeConfigurationNfsExportsClientConfiguration
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
