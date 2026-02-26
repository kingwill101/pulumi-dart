// ignore_for_file: unused_element, unnecessary_cast

import '../space_space_settings_custom_file_system_efs_file_system/space_space_settings_custom_file_system_efs_file_system.dart';

class SpaceSpaceSettingsCustomFileSystem {
  /// A custom file system in Amazon EFS. See <span pulumi-lang-nodejs="`efsFileSystem`" pulumi-lang-dotnet="`EfsFileSystem`" pulumi-lang-go="`efsFileSystem`" pulumi-lang-python="`efs_file_system`" pulumi-lang-yaml="`efsFileSystem`" pulumi-lang-java="`efsFileSystem`">`efs_file_system`</span> Block below.
  final SpaceSpaceSettingsCustomFileSystemEfsFileSystem efsFileSystem;

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
