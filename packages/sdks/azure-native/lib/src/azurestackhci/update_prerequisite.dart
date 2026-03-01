// ignore_for_file: unused_element, unnecessary_cast


/// If update State is HasPrerequisite, this property contains an array of objects describing prerequisite updates before installing this update. Otherwise, it is empty.
class UpdatePrerequisite {
  /// Friendly name of the prerequisite.
  final String? packageName;
  /// Updatable component type.
  final String? updateType;
  /// Version of the prerequisite.
  final String? version;

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
      packageName: map['packageName'] == null ? null : map['packageName'] as String,
      updateType: map['updateType'] == null ? null : map['updateType'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

