// ignore_for_file: unused_element, unnecessary_cast


/// Depends on profile definition.
class DependsOnProfile {
  /// Application installation operation dependency.
  final List<String>? installDependsOn;
  /// Application deletion operation dependency.
  final List<String>? uninstallDependsOn;
  /// Application update operation dependency.
  final List<String>? updateDependsOn;

  /// Creates a new [DependsOnProfile].
  /// [installDependsOn] Application installation operation dependency.
  /// [uninstallDependsOn] Application deletion operation dependency.
  /// [updateDependsOn] Application update operation dependency.
  DependsOnProfile({
    this.installDependsOn,
    this.uninstallDependsOn,
    this.updateDependsOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'installDependsOn': ?installDependsOn,
      'uninstallDependsOn': ?uninstallDependsOn,
      'updateDependsOn': ?updateDependsOn,
    };
  }

  factory DependsOnProfile.fromMap(Map<String, dynamic> map) {
    return DependsOnProfile(
      installDependsOn: map['installDependsOn'] == null ? null : (map['installDependsOn'] as List).cast<String>(),
      uninstallDependsOn: map['uninstallDependsOn'] == null ? null : (map['uninstallDependsOn'] as List).cast<String>(),
      updateDependsOn: map['updateDependsOn'] == null ? null : (map['updateDependsOn'] as List).cast<String>(),
    );
  }
}

