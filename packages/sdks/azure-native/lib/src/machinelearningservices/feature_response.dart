// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dto object representing feature
class FeatureResponse {
  /// Specifies type
  final pulumi.Input<String>? dataType;
  /// Specifies description
  final pulumi.Input<String>? description;
  /// Specifies name
  final pulumi.Input<String>? featureName;
  /// Specifies tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FeatureResponse].
  /// [dataType] Specifies type
  /// [description] Specifies description
  /// [featureName] Specifies name
  /// [tags] Specifies tags
  const FeatureResponse({
    this.dataType,
    this.description,
    this.featureName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': ?dataType,
      'description': ?description,
      'featureName': ?featureName,
      'tags': ?tags,
    };
  }

  factory FeatureResponse.fromMap(Map<String, dynamic> map) {
    return FeatureResponse(
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
