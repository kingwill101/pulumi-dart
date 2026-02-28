// ignore_for_file: unused_element, unnecessary_cast

import 'space_space_settings_custom_file_system_efs_file_system.dart';

class SpaceSpaceSettingsCustomFileSystem {
  /// A custom file system in Amazon EFS. See `efs_file_system` Block below.
  final SpaceSpaceSettingsCustomFileSystemEfsFileSystem efsFileSystem;

  /// Creates a new [SpaceSpaceSettingsCustomFileSystem].
  /// [efsFileSystem] A custom file system in Amazon EFS. See `efs_file_system` Block below.
  SpaceSpaceSettingsCustomFileSystem({
    required this.efsFileSystem,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['efsFileSystem'] = efsFileSystem.toMap();
    return map;
  }

  factory SpaceSpaceSettingsCustomFileSystem.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsCustomFileSystem(
      efsFileSystem: SpaceSpaceSettingsCustomFileSystemEfsFileSystem.fromMap(
          (map['efsFileSystem'] as Map).cast<String, dynamic>()),
    );
  }
}
