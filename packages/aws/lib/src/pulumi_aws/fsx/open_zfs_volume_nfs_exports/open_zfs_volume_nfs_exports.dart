// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../open_zfs_volume_nfs_exports_client_configuration/open_zfs_volume_nfs_exports_client_configuration.dart';

class OpenZfsVolumeNfsExports {
  /// A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See <span pulumi-lang-nodejs="`clientConfigurations`" pulumi-lang-dotnet="`ClientConfigurations`" pulumi-lang-go="`clientConfigurations`" pulumi-lang-python="`client_configurations`" pulumi-lang-yaml="`clientConfigurations`" pulumi-lang-java="`clientConfigurations`">`client_configurations`</span> Block below for details.
  final List<OpenZfsVolumeNfsExportsClientConfiguration> clientConfigurations;

  OpenZfsVolumeNfsExports({
    required this.clientConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientConfigurations'] = Input.encodeList<
        OpenZfsVolumeNfsExportsClientConfiguration,
        Map<String, dynamic>>(clientConfigurations, (value) => value.toMap());
    return map;
  }

  factory OpenZfsVolumeNfsExports.fromMap(Map<String, dynamic> map) {
    return OpenZfsVolumeNfsExports(
      clientConfigurations:
          Input.decodeList<OpenZfsVolumeNfsExportsClientConfiguration>(
              map['clientConfigurations'],
              (value) => OpenZfsVolumeNfsExportsClientConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
