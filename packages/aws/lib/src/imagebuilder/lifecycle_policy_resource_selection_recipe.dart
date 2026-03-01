// ignore_for_file: unused_element, unnecessary_cast


class LifecyclePolicyResourceSelectionRecipe {
  /// The name of an Image Builder recipe that the lifecycle policy uses for resource selection.
  final String name;
  /// The version of the Image Builder recipe specified by the name field.
  final String semanticVersion;

  /// Creates a new [LifecyclePolicyResourceSelectionRecipe].
  /// [name] The name of an Image Builder recipe that the lifecycle policy uses for resource selection.
  /// [semanticVersion] The version of the Image Builder recipe specified by the name field.
  LifecyclePolicyResourceSelectionRecipe({
    required this.name,
    required this.semanticVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'semanticVersion': semanticVersion,
    };
  }

  factory LifecyclePolicyResourceSelectionRecipe.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyResourceSelectionRecipe(
      name: map['name'] as String,
      semanticVersion: map['semanticVersion'] as String,
    );
  }
}

