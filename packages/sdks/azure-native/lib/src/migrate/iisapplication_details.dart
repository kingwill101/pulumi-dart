// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path.dart';

/// IISApplication details.
class IISApplicationDetails {
  /// Gets or sets the application pool name.
  final pulumi.Input<String?>? applicationPoolName;
  /// Gets or sets the list of directories.
  final pulumi.Input<List<DirectoryPath>?>? directories;
  /// Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  final pulumi.Input<bool?>? enable32BitApiOnWin64;
  /// Gets or sets the managed pipeline mode.
  final pulumi.Input<String?>? managedPipelineMode;
  /// Second level entity for virtual directories.
  final pulumi.Input<DirectoryPath?>? path;
  /// Gets or sets the runtime version.
  final pulumi.Input<String?>? runtimeVersion;

  /// Creates a new [IISApplicationDetails].
  /// [applicationPoolName] Gets or sets the application pool name.
  /// [directories] Gets or sets the list of directories.
  /// [enable32BitApiOnWin64] Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  /// [managedPipelineMode] Gets or sets the managed pipeline mode.
  /// [path] Second level entity for virtual directories.
  /// [runtimeVersion] Gets or sets the runtime version.
  const IISApplicationDetails({
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
      applicationPoolName: (() { final guardedValue = map['applicationPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directories: (() { final guardedValue = map['directories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DirectoryPath>(guardedValue, (value) => DirectoryPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enable32BitApiOnWin64: (() { final guardedValue = map['enable32BitApiOnWin64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedPipelineMode: (() { final guardedValue = map['managedPipelineMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DirectoryPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
