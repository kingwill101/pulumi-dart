// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
class UpdatePrerequisite {
  /// Friendly name of the prerequisite.
  final pulumi.Input<String>? packageName;
  /// Updatable component type.
  final pulumi.Input<String>? updateType;
  /// Version of the prerequisite.
  final pulumi.Input<String>? version;

  /// Creates a new [UpdatePrerequisite].
  /// [packageName] Friendly name of the prerequisite.
  /// [updateType] Updatable component type.
  /// [version] Version of the prerequisite.
  UpdatePrerequisite({
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

  factory UpdatePrerequisite.fromMap(Map<String, dynamic> map) {
    return UpdatePrerequisite(
      packageName: map['packageName'] == null ? null : (map['packageName'] as String).input(),
      updateType: map['updateType'] == null ? null : (map['updateType'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

