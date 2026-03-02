// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectorySelfServicePermissions {
  /// Whether WorkSpaces directory users can change the compute type (bundle) for their workspace. Default `false`.
  final pulumi.Input<bool>? changeComputeType;
  /// Whether WorkSpaces directory users can increase the volume size of the drives on their workspace. Default `false`.
  final pulumi.Input<bool>? increaseVolumeSize;
  /// Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state. Default `false`.
  final pulumi.Input<bool>? rebuildWorkspace;
  /// Whether WorkSpaces directory users can restart their workspace. Default `true`.
  final pulumi.Input<bool>? restartWorkspace;
  /// Whether WorkSpaces directory users can switch the running mode of their workspace. Default `false`.
  final pulumi.Input<bool>? switchRunningMode;

  /// Creates a new [DirectorySelfServicePermissions].
  /// [changeComputeType] Whether WorkSpaces directory users can change the compute type (bundle) for their workspace. Default `false`.
  /// [increaseVolumeSize] Whether WorkSpaces directory users can increase the volume size of the drives on their workspace. Default `false`.
  /// [rebuildWorkspace] Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state. Default `false`.
  /// [restartWorkspace] Whether WorkSpaces directory users can restart their workspace. Default `true`.
  /// [switchRunningMode] Whether WorkSpaces directory users can switch the running mode of their workspace. Default `false`.
  DirectorySelfServicePermissions({
    this.changeComputeType,
    this.increaseVolumeSize,
    this.rebuildWorkspace,
    this.restartWorkspace,
    this.switchRunningMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeComputeType': ?changeComputeType,
      'increaseVolumeSize': ?increaseVolumeSize,
      'rebuildWorkspace': ?rebuildWorkspace,
      'restartWorkspace': ?restartWorkspace,
      'switchRunningMode': ?switchRunningMode,
    };
  }

  factory DirectorySelfServicePermissions.fromMap(Map<String, dynamic> map) {
    return DirectorySelfServicePermissions(
      changeComputeType: map['changeComputeType'] == null ? null : ((map['changeComputeType'] as bool).input()).input(),
      increaseVolumeSize: map['increaseVolumeSize'] == null ? null : ((map['increaseVolumeSize'] as bool).input()).input(),
      rebuildWorkspace: map['rebuildWorkspace'] == null ? null : ((map['rebuildWorkspace'] as bool).input()).input(),
      restartWorkspace: map['restartWorkspace'] == null ? null : ((map['restartWorkspace'] as bool).input()).input(),
      switchRunningMode: map['switchRunningMode'] == null ? null : ((map['switchRunningMode'] as bool).input()).input(),
    );
  }
}

