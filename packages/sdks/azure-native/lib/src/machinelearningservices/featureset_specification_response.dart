// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// DTO object representing specification
class FeaturesetSpecificationResponse {
  /// Specifies the spec path
  final pulumi.Input<String>? path;

  /// Creates a new [FeaturesetSpecificationResponse].
  /// [path] Specifies the spec path
  const FeaturesetSpecificationResponse({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory FeaturesetSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return FeaturesetSpecificationResponse(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
