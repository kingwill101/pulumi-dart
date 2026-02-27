// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_response_containeranalysis_v1alpha1.dart';
import 'recipe_response_containeranalysis_v1alpha1.dart';

class InTotoProvenanceResponseContaineranalysisV1alpha1 {
  /// required
  final Map<String, dynamic> builderConfig;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<String> materials;
  final MetadataResponseContaineranalysisV1alpha1 metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final RecipeResponseContaineranalysisV1alpha1 recipe;

  InTotoProvenanceResponseContaineranalysisV1alpha1({
    required this.builderConfig,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderConfig'] = builderConfig;
    map['materials'] = materials;
    map['metadata'] = metadata.toMap();
    map['recipe'] = recipe.toMap();
    return map;
  }

  factory InTotoProvenanceResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return InTotoProvenanceResponseContaineranalysisV1alpha1(
      builderConfig: (map['builderConfig'] as Map).cast<String, dynamic>(),
      materials: (map['materials'] as List).cast<String>(),
      metadata: MetadataResponseContaineranalysisV1alpha1.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      recipe: RecipeResponseContaineranalysisV1alpha1.fromMap(
          (map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
