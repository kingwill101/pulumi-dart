// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkspaceWorkspaceProperty {
  /// Compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO` and `GRAPHICSPRO`.
  final pulumi.Input<String> computeTypeName;
  /// Size of the root volume.
  final pulumi.Input<int> rootVolumeSizeGib;
  /// Running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  final pulumi.Input<String> runningMode;
  /// Time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  final pulumi.Input<int> runningModeAutoStopTimeoutInMinutes;
  /// Size of the user storage.
  final pulumi.Input<int> userVolumeSizeGib;

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
      'runningModeAutoStopTimeoutInMinutes': runningModeAutoStopTimeoutInMinutes,
      'userVolumeSizeGib': userVolumeSizeGib,
    };
  }

  factory GetWorkspaceWorkspaceProperty.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceWorkspaceProperty(
      computeTypeName: pulumi.Input.fromValue(map['computeTypeName'] as String),
      rootVolumeSizeGib: pulumi.Input.fromValue(map['rootVolumeSizeGib'] as int),
      runningMode: pulumi.Input.fromValue(map['runningMode'] as String),
      runningModeAutoStopTimeoutInMinutes: pulumi.Input.fromValue(map['runningModeAutoStopTimeoutInMinutes'] as int),
      userVolumeSizeGib: pulumi.Input.fromValue(map['userVolumeSizeGib'] as int),
    );
  }
}

