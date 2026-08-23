// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LifecyclePolicyResourceSelectionRecipe {
  /// The name of an Image Builder recipe that the lifecycle policy uses for resource selection.
  final pulumi.Input<String> name;
  /// The version of the Image Builder recipe specified by the `name` field. Wildcard semantic version is supported (e.g. `1.0.x`, `1.x.x`, `x.x.x`).
  final pulumi.Input<String> semanticVersion;

  /// Creates a new [LifecyclePolicyResourceSelectionRecipe].
  /// [name] The name of an Image Builder recipe that the lifecycle policy uses for resource selection.
  /// [semanticVersion] The version of the Image Builder recipe specified by the `name` field. Wildcard semantic version is supported (e.g. `1.0.x`, `1.x.x`, `x.x.x`).
  const LifecyclePolicyResourceSelectionRecipe({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      semanticVersion: pulumi.Input.fromValue(map['semanticVersion'] as String),
    );
  }
}
