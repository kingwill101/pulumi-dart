// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema for MSIX Package Dependencies properties.
class MsixPackageDependenciesResponse {
  /// Name of package dependency.
  final pulumi.Input<String>? dependencyName;
  /// Dependency version required.
  final pulumi.Input<String>? minVersion;
  /// Name of dependency publisher.
  final pulumi.Input<String>? publisher;

  /// Creates a new [MsixPackageDependenciesResponse].
  /// [dependencyName] Name of package dependency.
  /// [minVersion] Dependency version required.
  /// [publisher] Name of dependency publisher.
  MsixPackageDependenciesResponse({
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

  factory MsixPackageDependenciesResponse.fromMap(Map<String, dynamic> map) {
    return MsixPackageDependenciesResponse(
      dependencyName: map['dependencyName'] == null ? null : (map['dependencyName']! as String).input(),
      minVersion: map['minVersion'] == null ? null : (map['minVersion']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
    );
  }
}

