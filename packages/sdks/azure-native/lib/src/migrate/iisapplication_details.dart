// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path.dart';

/// IISApplication details.
class IISApplicationDetails {
  /// Gets or sets the application pool name.
  final pulumi.Input<String>? applicationPoolName;
  /// Gets or sets the list of directories.
  final pulumi.Input<List<DirectoryPath>>? directories;
  /// Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  final pulumi.Input<bool>? enable32BitApiOnWin64;
  /// Gets or sets the managed pipeline mode.
  final pulumi.Input<String>? managedPipelineMode;
  /// Second level entity for virtual directories.
  final pulumi.Input<DirectoryPath>? path;
  /// Gets or sets the runtime version.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [IISApplicationDetails].
  /// [applicationPoolName] Gets or sets the application pool name.
  /// [directories] Gets or sets the list of directories.
  /// [enable32BitApiOnWin64] Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  /// [managedPipelineMode] Gets or sets the managed pipeline mode.
  /// [path] Second level entity for virtual directories.
  /// [runtimeVersion] Gets or sets the runtime version.
  IISApplicationDetails({
    this.applicationPoolName,
    this.directories,
    this.enable32BitApiOnWin64,
    this.managedPipelineMode,
    this.path,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPoolName': ?applicationPoolName,
      'directories': ?pulumi.Input.mapOptionalInputValue<List<DirectoryPath>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<DirectoryPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enable32BitApiOnWin64': ?enable32BitApiOnWin64,
      'managedPipelineMode': ?managedPipelineMode,
      'path': ?pulumi.Input.mapOptionalInputValue<DirectoryPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory IISApplicationDetails.fromMap(Map<String, dynamic> map) {
    return IISApplicationDetails(
      applicationPoolName: map['applicationPoolName'] == null ? null : (map['applicationPoolName']! as String).input(),
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<DirectoryPath>(map['directories']!, (value) => DirectoryPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enable32BitApiOnWin64: map['enable32BitApiOnWin64'] == null ? null : (map['enable32BitApiOnWin64']! as bool).input(),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : (map['managedPipelineMode']! as String).input(),
      path: map['path'] == null ? null : (DirectoryPath.fromMap((map['path']! as Map).cast<String, dynamic>())).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion']! as String).input(),
    );
  }
}

