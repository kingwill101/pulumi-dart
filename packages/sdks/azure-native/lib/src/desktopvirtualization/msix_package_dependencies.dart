// ignore_for_file: unused_element, unnecessary_cast


/// Schema for MSIX Package Dependencies properties.
class MsixPackageDependencies {
  /// Name of package dependency.
  final String? dependencyName;
  /// Dependency version required.
  final String? minVersion;
  /// Name of dependency publisher.
  final String? publisher;

  /// Creates a new [MsixPackageDependencies].
  /// [dependencyName] Name of package dependency.
  /// [minVersion] Dependency version required.
  /// [publisher] Name of dependency publisher.
  MsixPackageDependencies({
    this.dependencyName,
    this.minVersion,
    this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencyName': ?dependencyName,
      'minVersion': ?minVersion,
      'publisher': ?publisher,
    };
  }

  factory MsixPackageDependencies.fromMap(Map<String, dynamic> map) {
    return MsixPackageDependencies(
      dependencyName: map['dependencyName'] == null ? null : map['dependencyName'] as String,
      minVersion: map['minVersion'] == null ? null : map['minVersion'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
    );
  }
}

