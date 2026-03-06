// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkspaceWorkspaceProperties {
  /// The compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO`, `GRAPHICSPRO`, `GRAPHICS_G4DN`, and `GRAPHICSPRO_G4DN`.
  final pulumi.Input<String>? computeTypeName;
  /// The size of the root volume.
  final pulumi.Input<int>? rootVolumeSizeGib;
  /// The running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  final pulumi.Input<String>? runningMode;
  /// The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  final pulumi.Input<int>? runningModeAutoStopTimeoutInMinutes;
  /// The size of the user storage.
  final pulumi.Input<int>? userVolumeSizeGib;

  /// Creates a new [WorkspaceWorkspaceProperties].
  /// [computeTypeName] The compute type. For more information, see [Amazon WorkSpaces Bundles](http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles). Valid values are `VALUE`, `STANDARD`, `PERFORMANCE`, `POWER`, `GRAPHICS`, `POWERPRO`, `GRAPHICSPRO`, `GRAPHICS_G4DN`, and `GRAPHICSPRO_G4DN`.
  /// [rootVolumeSizeGib] The size of the root volume.
  /// [runningMode] The running mode. For more information, see [Manage the WorkSpace Running Mode](https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html). Valid values are `AUTO_STOP` and `ALWAYS_ON`.
  /// [runningModeAutoStopTimeoutInMinutes] The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60-minute intervals.
  /// [userVolumeSizeGib] The size of the user storage.
  const WorkspaceWorkspaceProperties({
    this.computeTypeName,
    this.rootVolumeSizeGib,
    this.runningMode,
    this.runningModeAutoStopTimeoutInMinutes,
    this.userVolumeSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeTypeName': ?computeTypeName,
      'rootVolumeSizeGib': ?rootVolumeSizeGib,
      'runningMode': ?runningMode,
      'runningModeAutoStopTimeoutInMinutes': ?runningModeAutoStopTimeoutInMinutes,
      'userVolumeSizeGib': ?userVolumeSizeGib,
    };
  }

  factory WorkspaceWorkspaceProperties.fromMap(Map<String, dynamic> map) {
    return WorkspaceWorkspaceProperties(
      computeTypeName: (() { final guardedValue = map['computeTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootVolumeSizeGib: (() { final guardedValue = map['rootVolumeSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      runningMode: (() { final guardedValue = map['runningMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runningModeAutoStopTimeoutInMinutes: (() { final guardedValue = map['runningModeAutoStopTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      userVolumeSizeGib: (() { final guardedValue = map['userVolumeSizeGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

