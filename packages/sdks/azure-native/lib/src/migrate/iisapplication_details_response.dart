// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path_response.dart';

/// IISApplication details.
class IISApplicationDetailsResponse {
  /// Gets or sets the application pool name.
  final pulumi.Input<String>? applicationPoolName;
  /// Gets or sets the list of directories.
  final pulumi.Input<List<DirectoryPathResponse>>? directories;
  /// Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  final pulumi.Input<bool>? enable32BitApiOnWin64;
  /// Gets the ID.
  final pulumi.Input<String> id;
  /// Gets or sets the managed pipeline mode.
  final pulumi.Input<String>? managedPipelineMode;
  /// Second level entity for virtual directories.
  final pulumi.Input<DirectoryPathResponse>? path;
  /// Gets or sets the runtime version.
  final pulumi.Input<String>? runtimeVersion;

  /// Creates a new [IISApplicationDetailsResponse].
  /// [applicationPoolName] Gets or sets the application pool name.
  /// [directories] Gets or sets the list of directories.
  /// [enable32BitApiOnWin64] Gets or sets a value indicating whether 32 bit applications are allowed to run on 64 bit.
  /// [id] Gets the ID.
  /// [managedPipelineMode] Gets or sets the managed pipeline mode.
  /// [path] Second level entity for virtual directories.
  /// [runtimeVersion] Gets or sets the runtime version.
  IISApplicationDetailsResponse({
    this.applicationPoolName,
    this.directories,
    this.enable32BitApiOnWin64,
    required this.id,
    this.managedPipelineMode,
    this.path,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPoolName': ?applicationPoolName,
      'directories': ?pulumi.Input.mapOptionalInputValue<List<DirectoryPathResponse>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<DirectoryPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enable32BitApiOnWin64': ?enable32BitApiOnWin64,
      'id': id,
      'managedPipelineMode': ?managedPipelineMode,
      'path': ?pulumi.Input.mapOptionalInputValue<DirectoryPathResponse, Map<String, dynamic>>(path, (value) => value.toMap()),
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory IISApplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IISApplicationDetailsResponse(
      applicationPoolName: map['applicationPoolName'] == null ? null : (map['applicationPoolName'] as String).input(),
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<DirectoryPathResponse>(map['directories'], (value) => DirectoryPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enable32BitApiOnWin64: map['enable32BitApiOnWin64'] == null ? null : (map['enable32BitApiOnWin64'] as bool).input(),
      id: (map['id'] as String).input(),
      managedPipelineMode: map['managedPipelineMode'] == null ? null : (map['managedPipelineMode'] as String).input(),
      path: map['path'] == null ? null : (DirectoryPathResponse.fromMap((map['path'] as Map).cast<String, dynamic>())).input(),
      runtimeVersion: map['runtimeVersion'] == null ? null : (map['runtimeVersion'] as String).input(),
    );
  }
}

