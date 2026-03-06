// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Depends on profile definition.
class DependsOnProfileResponse {
  /// Application installation operation dependency.
  final pulumi.Input<List<String>>? installDependsOn;
  /// Application deletion operation dependency.
  final pulumi.Input<List<String>>? uninstallDependsOn;
  /// Application update operation dependency.
  final pulumi.Input<List<String>>? updateDependsOn;

  /// Creates a new [DependsOnProfileResponse].
  /// [installDependsOn] Application installation operation dependency.
  /// [uninstallDependsOn] Application deletion operation dependency.
  /// [updateDependsOn] Application update operation dependency.
  const DependsOnProfileResponse({
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

  factory DependsOnProfileResponse.fromMap(Map<String, dynamic> map) {
    return DependsOnProfileResponse(
      installDependsOn: (() { final guardedValue = map['installDependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uninstallDependsOn: (() { final guardedValue = map['uninstallDependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateDependsOn: (() { final guardedValue = map['updateDependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

