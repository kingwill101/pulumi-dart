// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_response.dart';
import 'recipe_response.dart';

class InTotoProvenanceResponse {
  /// required
  final Map<String, dynamic> builderConfig;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<String> materials;
  final MetadataResponse metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final RecipeResponse recipe;

  /// Creates a new [InTotoProvenanceResponse].
  /// [builderConfig] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Required.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  InTotoProvenanceResponse({
    required this.builderConfig,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderConfig': builderConfig,
      'materials': materials,
      'metadata': metadata.toMap(),
      'recipe': recipe.toMap(),
    };
  }

  factory InTotoProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return InTotoProvenanceResponse(
      builderConfig: (map['builderConfig'] as Map).cast<String, dynamic>(),
      materials: (map['materials'] as List).cast<String>(),
      metadata: MetadataResponse.fromMap(
        (map['metadata'] as Map).cast<String, dynamic>(),
      ),
      recipe: RecipeResponse.fromMap(
        (map['recipe'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
