// ignore_for_file: unused_element, unnecessary_cast


/// Additional settings for the VM app that contains the target package and config file name when it is deployed to target VM or VM scale set.
class UserArtifactSettings {
  /// Optional. The name to assign the downloaded config file on the VM. This is limited to 4096 characters. If not specified, the config file will be named the Gallery Application name appended with "_config".
  final String? configFileName;
  /// Optional. The name to assign the downloaded package file on the VM. This is limited to 4096 characters. If not specified, the package file will be named the same as the Gallery Application name.
  final String? packageFileName;
  /// Optional. The action to be taken with regards to install/update/remove of the gallery application in the event of a reboot.
  final String? scriptBehaviorAfterReboot;

  /// Creates a new [UserArtifactSettings].
  /// [configFileName] Optional. The name to assign the downloaded config file on the VM. This is limited to 4096 characters. If not specified, the config file will be named the Gallery Application name appended with "_config".
  /// [packageFileName] Optional. The name to assign the downloaded package file on the VM. This is limited to 4096 characters. If not specified, the package file will be named the same as the Gallery Application name.
  /// [scriptBehaviorAfterReboot] Optional. The action to be taken with regards to install/update/remove of the gallery application in the event of a reboot.
  UserArtifactSettings({
    this.configFileName,
    this.packageFileName,
    this.scriptBehaviorAfterReboot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFileName': ?configFileName,
      'packageFileName': ?packageFileName,
      'scriptBehaviorAfterReboot': ?scriptBehaviorAfterReboot,
    };
  }

  factory UserArtifactSettings.fromMap(Map<String, dynamic> map) {
    return UserArtifactSettings(
      configFileName: map['configFileName'] == null ? null : map['configFileName'] as String,
      packageFileName: map['packageFileName'] == null ? null : map['packageFileName'] as String,
      scriptBehaviorAfterReboot: map['scriptBehaviorAfterReboot'] == null ? null : map['scriptBehaviorAfterReboot'] as String,
    );
  }
}

