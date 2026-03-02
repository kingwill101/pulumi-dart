// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_zfs_volume_nfs_exports_client_configuration.dart';

class OpenZfsVolumeNfsExports {
  /// A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See `client_configurations` Block below for details.
  final pulumi.Input<List<OpenZfsVolumeNfsExportsClientConfiguration>> clientConfigurations;

  /// Creates a new [OpenZfsVolumeNfsExports].
  /// [clientConfigurations] A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See `client_configurations` Block below for details.
  OpenZfsVolumeNfsExports({
    required this.clientConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientConfigurations': pulumi.Input.mapInputValue<List<OpenZfsVolumeNfsExportsClientConfiguration>, List<Map<String, dynamic>>>(clientConfigurations, (value) => pulumi.Input.encodeList<OpenZfsVolumeNfsExportsClientConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OpenZfsVolumeNfsExports.fromMap(Map<String, dynamic> map) {
    return OpenZfsVolumeNfsExports(
      clientConfigurations: (pulumi.Input.decodeList<OpenZfsVolumeNfsExportsClientConfiguration>(map['clientConfigurations']!, (value) => OpenZfsVolumeNfsExportsClientConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

