// ignore_for_file: unused_element, unnecessary_cast

class DirectorySelfServicePermissions {
  /// Whether WorkSpaces directory users can change the compute type (bundle) for their workspace. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? changeComputeType;

  /// Whether WorkSpaces directory users can increase the volume size of the drives on their workspace. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? increaseVolumeSize;

  /// Whether WorkSpaces directory users can rebuild the operating system of a workspace to its original state. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? rebuildWorkspace;

  /// Whether WorkSpaces directory users can restart their workspace. Default <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? restartWorkspace;

  /// Whether WorkSpaces directory users can switch the running mode of their workspace. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? switchRunningMode;

  DirectorySelfServicePermissions({
    this.changeComputeType,
    this.increaseVolumeSize,
    this.rebuildWorkspace,
    this.restartWorkspace,
    this.switchRunningMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final changeComputeTypeValue = changeComputeType;
    if (changeComputeTypeValue != null) {
      map['changeComputeType'] = changeComputeTypeValue;
    }
    final increaseVolumeSizeValue = increaseVolumeSize;
    if (increaseVolumeSizeValue != null) {
      map['increaseVolumeSize'] = increaseVolumeSizeValue;
    }
    final rebuildWorkspaceValue = rebuildWorkspace;
    if (rebuildWorkspaceValue != null) {
      map['rebuildWorkspace'] = rebuildWorkspaceValue;
    }
    final restartWorkspaceValue = restartWorkspace;
    if (restartWorkspaceValue != null) {
      map['restartWorkspace'] = restartWorkspaceValue;
    }
    final switchRunningModeValue = switchRunningMode;
    if (switchRunningModeValue != null) {
      map['switchRunningMode'] = switchRunningModeValue;
    }
    return map;
  }

  factory DirectorySelfServicePermissions.fromMap(Map<String, dynamic> map) {
    return DirectorySelfServicePermissions(
      changeComputeType: map['changeComputeType'] == null
          ? null
          : map['changeComputeType'] as bool,
      increaseVolumeSize: map['increaseVolumeSize'] == null
          ? null
          : map['increaseVolumeSize'] as bool,
      rebuildWorkspace: map['rebuildWorkspace'] == null
          ? null
          : map['rebuildWorkspace'] as bool,
      restartWorkspace: map['restartWorkspace'] == null
          ? null
          : map['restartWorkspace'] as bool,
      switchRunningMode: map['switchRunningMode'] == null
          ? null
          : map['switchRunningMode'] as bool,
    );
  }
}
