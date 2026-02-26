// ignore_for_file: unused_element, unnecessary_cast

class GetWorkspaceWorkspaceProperty {
  /// Compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO` and `GRAPHICSPRO`.
  final String computeTypeName;

  /// Size of the root volume.
  final int rootVolumeSizeGib;

  /// Running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  final String runningMode;

  /// Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  final int runningModeAutoStopTimeoutInMinutes;

  /// Size of the user storage.
  final int userVolumeSizeGib;

  GetWorkspaceWorkspaceProperty({
    required this.computeTypeName,
    required this.rootVolumeSizeGib,
    required this.runningMode,
    required this.runningModeAutoStopTimeoutInMinutes,
    required this.userVolumeSizeGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['computeTypeName'] = computeTypeName;
    map['rootVolumeSizeGib'] = rootVolumeSizeGib;
    map['runningMode'] = runningMode;
    map['runningModeAutoStopTimeoutInMinutes'] =
        runningModeAutoStopTimeoutInMinutes;
    map['userVolumeSizeGib'] = userVolumeSizeGib;
    return map;
  }

  factory GetWorkspaceWorkspaceProperty.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceWorkspaceProperty(
      computeTypeName: map['computeTypeName'] as String,
      rootVolumeSizeGib: map['rootVolumeSizeGib'] as int,
      runningMode: map['runningMode'] as String,
      runningModeAutoStopTimeoutInMinutes:
          map['runningModeAutoStopTimeoutInMinutes'] as int,
      userVolumeSizeGib: map['userVolumeSizeGib'] as int,
    );
  }
}
