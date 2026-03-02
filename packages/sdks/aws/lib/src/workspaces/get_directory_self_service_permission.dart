// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDirectorySelfServicePermission {
  /// Whether WorkSpaces directory users can change the compute type (bundle) for their workspace.
  final pulumi.Input<bool> changeComputeType;
  /// Whether WorkSpaces directory users can increase the volume size of the drives on their workspace.
  final pulumi.Input<bool> increaseVolumeSize;
  /// Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state.
  final pulumi.Input<bool> rebuildWorkspace;
  /// Whether WorkSpaces directory users can restart their workspace.
  final pulumi.Input<bool> restartWorkspace;
  /// Whether WorkSpaces directory users can switch the running mode of their workspace.
  final pulumi.Input<bool> switchRunningMode;

  /// Creates a new [GetDirectorySelfServicePermission].
  /// [changeComputeType] Whether WorkSpaces directory users can change the compute type (bundle) for their workspace.
  /// [increaseVolumeSize] Whether WorkSpaces directory users can increase the volume size of the drives on their workspace.
  /// [rebuildWorkspace] Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state.
  /// [restartWorkspace] Whether WorkSpaces directory users can restart their workspace.
  /// [switchRunningMode] Whether WorkSpaces directory users can switch the running mode of their workspace.
  GetDirectorySelfServicePermission({
    required this.changeComputeType,
    required this.increaseVolumeSize,
    required this.rebuildWorkspace,
    required this.restartWorkspace,
    required this.switchRunningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeComputeType': changeComputeType,
      'increaseVolumeSize': increaseVolumeSize,
      'rebuildWorkspace': rebuildWorkspace,
      'restartWorkspace': restartWorkspace,
      'switchRunningMode': switchRunningMode,
    };
  }

  factory GetDirectorySelfServicePermission.fromMap(Map<String, dynamic> map) {
    return GetDirectorySelfServicePermission(
      changeComputeType: (map['changeComputeType'] as bool).input(),
      increaseVolumeSize: (map['increaseVolumeSize'] as bool).input(),
      rebuildWorkspace: (map['rebuildWorkspace'] as bool).input(),
      restartWorkspace: (map['restartWorkspace'] as bool).input(),
      switchRunningMode: (map['switchRunningMode'] as bool).input(),
    );
  }
}

