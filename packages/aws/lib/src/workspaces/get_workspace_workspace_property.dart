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

  /// Creates a new [GetWorkspaceWorkspaceProperty].
  /// [computeTypeName] Compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO` and `GRAPHICSPRO`.
  /// [rootVolumeSizeGib] Size of the root volume.
  /// [runningMode] Running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  /// [runningModeAutoStopTimeoutInMinutes] Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  /// [userVolumeSizeGib] Size of the user storage.
  GetWorkspaceWorkspaceProperty({
    required this.computeTypeName,
    required this.rootVolumeSizeGib,
    required this.runningMode,
    required this.runningModeAutoStopTimeoutInMinutes,
    required this.userVolumeSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeTypeName': computeTypeName,
      'rootVolumeSizeGib': rootVolumeSizeGib,
      'runningMode': runningMode,
      'runningModeAutoStopTimeoutInMinutes':
          runningModeAutoStopTimeoutInMinutes,
      'userVolumeSizeGib': userVolumeSizeGib,
    };
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
