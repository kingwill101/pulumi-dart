// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DTO object representing specification
class FeaturesetSpecification {
  /// Specifies the spec path
  final pulumi.Input<String>? path;

  /// Creates a new [FeaturesetSpecification].
  /// [path] Specifies the spec path
  FeaturesetSpecification({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory FeaturesetSpecification.fromMap(Map<String, dynamic> map) {
    return FeaturesetSpecification(
      path: map['path'] == null ? null : (map['path']! as String).input(),
    );
  }
}

