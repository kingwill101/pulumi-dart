// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path.dart';

/// IISApplication details.
class IISApplicationDetails {
  /// Gets or sets the application pool name.
  final String? applicationPoolName;
  /// Gets or sets the list of directories.
  final List<DirectoryPath>? directories;
  /// Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  final bool? enable32BitApiOnWin64;
  /// Gets or sets the managed pipeline mode.
  final String? managedPipelineMode;
  /// Second level entity for virtual directories.
  final DirectoryPath? path;
  /// Gets or sets the runtime version.
  final String? runtimeVersion;

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
      'directories': ?directories == null ? null : pulumi.Input.encodeList<DirectoryPath, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'enable32BitApiOnWin64': ?enable32BitApiOnWin64,
      'managedPipelineMode': ?managedPipelineMode,
      'path': ?path == null ? null : path!.toMap(),
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory IISApplicationDetails.fromMap(Map<String, dynamic> map) {
    return IISApplicationDetails(
      applicationPoolName: map['applicationPoolName'] == null ? null : map['applicationPoolName'] as String,
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<DirectoryPath>(map['directories'], (value) => DirectoryPath.fromMap((value as Map).cast<String, dynamic>())),
      enable32BitApiOnWin64: map['enable32BitApiOnWin64'] == null ? null : map['enable32BitApiOnWin64'] as bool,
      managedPipelineMode: map['managedPipelineMode'] == null ? null : map['managedPipelineMode'] as String,
      path: map['path'] == null ? null : DirectoryPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}

