// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFeaturesetVersionFeature.
class GetFeaturesetVersionFeatureResult {
  /// Specifies type
  final String? dataType;
  /// Specifies description
  final String? description;
  /// Specifies name
  final String? featureName;
  /// Specifies tags
  final Map<String, String>? tags;

  /// Creates a new [GetFeaturesetVersionFeatureResult].
  /// [dataType] Specifies type
  /// [description] Specifies description
  /// [featureName] Specifies name
  /// [tags] Specifies tags
  GetFeaturesetVersionFeatureResult({
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

  factory GetFeaturesetVersionFeatureResult.fromMap(Map<String, dynamic> map) {
    return GetFeaturesetVersionFeatureResult(
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      featureName: map['featureName'] == null ? null : map['featureName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

