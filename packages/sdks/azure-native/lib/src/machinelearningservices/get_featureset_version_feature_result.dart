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
  const GetFeaturesetVersionFeatureResult({
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
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

