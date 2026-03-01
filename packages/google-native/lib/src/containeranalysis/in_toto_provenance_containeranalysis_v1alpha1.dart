// ignore_for_file: unused_element, unnecessary_cast

import 'builder_config_containeranalysis_v1alpha1.dart';
import 'metadata_containeranalysis_v1alpha1.dart';
import 'recipe_containeranalysis_v1alpha1.dart';

class InTotoProvenanceContaineranalysisV1alpha1 {
  /// required
  final BuilderConfigContaineranalysisV1alpha1? builderConfig;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<String>? materials;
  final MetadataContaineranalysisV1alpha1? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final RecipeContaineranalysisV1alpha1? recipe;

  /// Creates a new [InTotoProvenanceContaineranalysisV1alpha1].
  /// [builderConfig] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Optional.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  InTotoProvenanceContaineranalysisV1alpha1({
    this.builderConfig,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderConfig': ?builderConfig == null ? null : builderConfig!.toMap(),
      'materials': ?materials,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'recipe': ?recipe == null ? null : recipe!.toMap(),
    };
  }

  factory InTotoProvenanceContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InTotoProvenanceContaineranalysisV1alpha1(
      builderConfig: map['builderConfig'] == null
          ? null
          : BuilderConfigContaineranalysisV1alpha1.fromMap(
              (map['builderConfig'] as Map).cast<String, dynamic>(),
            ),
      materials: map['materials'] == null
          ? null
          : (map['materials'] as List).cast<String>(),
      metadata: map['metadata'] == null
          ? null
          : MetadataContaineranalysisV1alpha1.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>(),
            ),
      recipe: map['recipe'] == null
          ? null
          : RecipeContaineranalysisV1alpha1.fromMap(
              (map['recipe'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
