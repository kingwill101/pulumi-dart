// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_space_settings_custom_file_system_efs_file_system.dart';

class SpaceSpaceSettingsCustomFileSystem {
  /// A custom file system in Amazon EFS. See `efs_file_system` Block below.
  final pulumi.Input<SpaceSpaceSettingsCustomFileSystemEfsFileSystem> efsFileSystem;

  /// Creates a new [SpaceSpaceSettingsCustomFileSystem].
  /// [efsFileSystem] A custom file system in Amazon EFS. See `efs_file_system` Block below.
  SpaceSpaceSettingsCustomFileSystem({
    required this.efsFileSystem,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'efsFileSystem': pulumi.Input.mapInputValue<SpaceSpaceSettingsCustomFileSystemEfsFileSystem, Map<String, dynamic>>(efsFileSystem, (value) => value.toMap()),
    };
  }

  factory SpaceSpaceSettingsCustomFileSystem.fromMap(Map<String, dynamic> map) {
    return SpaceSpaceSettingsCustomFileSystem(
      efsFileSystem: pulumi.Input.fromValue(SpaceSpaceSettingsCustomFileSystemEfsFileSystem.fromMap((map['efsFileSystem']! as Map).cast<String, dynamic>())),
    );
  }
}

