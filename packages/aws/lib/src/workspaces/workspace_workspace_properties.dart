// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceWorkspaceProperties {
  /// The compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO`, `GRAPHICSPRO`, `GRAPHICS_G4DN`, and `GRAPHICSPRO_G4DN`.
  final String? computeTypeName;

  /// The size of the root volume.
  final int? rootVolumeSizeGib;

  /// The running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  final String? runningMode;

  /// The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  final int? runningModeAutoStopTimeoutInMinutes;

  /// The size of the user storage.
  final int? userVolumeSizeGib;

  /// Creates a new [WorkspaceWorkspaceProperties].
  /// [computeTypeName] The compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO`, `GRAPHICSPRO`, `GRAPHICS_G4DN`, and `GRAPHICSPRO_G4DN`.
  /// [rootVolumeSizeGib] The size of the root volume.
  /// [runningMode] The running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  /// [runningModeAutoStopTimeoutInMinutes] The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  /// [userVolumeSizeGib] The size of the user storage.
  WorkspaceWorkspaceProperties({
    this.computeTypeName,
    this.rootVolumeSizeGib,
    this.runningMode,
    this.runningModeAutoStopTimeoutInMinutes,
    this.userVolumeSizeGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeTypeNameValue = computeTypeName;
    if (computeTypeNameValue != null) {
      map['computeTypeName'] = computeTypeNameValue;
    }
    final rootVolumeSizeGibValue = rootVolumeSizeGib;
    if (rootVolumeSizeGibValue != null) {
      map['rootVolumeSizeGib'] = rootVolumeSizeGibValue;
    }
    final runningModeValue = runningMode;
    if (runningModeValue != null) {
      map['runningMode'] = runningModeValue;
    }
    final runningModeAutoStopTimeoutInMinutesValue =
        runningModeAutoStopTimeoutInMinutes;
    if (runningModeAutoStopTimeoutInMinutesValue != null) {
      map['runningModeAutoStopTimeoutInMinutes'] =
          runningModeAutoStopTimeoutInMinutesValue;
    }
    final userVolumeSizeGibValue = userVolumeSizeGib;
    if (userVolumeSizeGibValue != null) {
      map['userVolumeSizeGib'] = userVolumeSizeGibValue;
    }
    return map;
  }

  factory WorkspaceWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return WorkspaceWorkspaceProperties(
      computeTypeName: map['computeTypeName'] == null
          ? null
          : map['computeTypeName'] as String,
      rootVolumeSizeGib: map['rootVolumeSizeGib'] == null
          ? null
          : map['rootVolumeSizeGib'] as int,
      runningMode:
          map['runningMode'] == null ? null : map['runningMode'] as String,
      runningModeAutoStopTimeoutInMinutes:
          map['runningModeAutoStopTimeoutInMinutes'] == null
              ? null
              : map['runningModeAutoStopTimeoutInMinutes'] as int,
      userVolumeSizeGib: map['userVolumeSizeGib'] == null
          ? null
          : map['userVolumeSizeGib'] as int,
    );
  }
}
