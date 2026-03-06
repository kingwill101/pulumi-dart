// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
class UpdatePrerequisiteResponse {
  /// Friendly name of the prerequisite.
  final pulumi.Input<String>? packageName;
  /// Updatable component type.
  final pulumi.Input<String>? updateType;
  /// Version of the prerequisite.
  final pulumi.Input<String>? version;

  /// Creates a new [UpdatePrerequisiteResponse].
  /// [packageName] Friendly name of the prerequisite.
  /// [updateType] Updatable component type.
  /// [version] Version of the prerequisite.
  const UpdatePrerequisiteResponse({
    this.packageName,
    this.updateType,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageName': ?packageName,
      'updateType': ?updateType,
      'version': ?version,
    };
  }

  factory UpdatePrerequisiteResponse.fromMap(Map<String, dynamic> map) {
    return UpdatePrerequisiteResponse(
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateType: (() { final guardedValue = map['updateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

