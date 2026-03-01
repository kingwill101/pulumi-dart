// ignore_for_file: unused_element, unnecessary_cast

import 'builder_config.dart';
import 'metadata.dart';
import 'recipe.dart';

class InTotoProvenance {
  /// required
  final BuilderConfig? builderConfig;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<String>? materials;
  final Metadata? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final Recipe? recipe;

  /// Creates a new [InTotoProvenance].
  /// [builderConfig] required
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] Optional.
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  InTotoProvenance({
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

  factory InTotoProvenance.fromMap(Map<String, dynamic> map) {
    return InTotoProvenance(
      builderConfig: map['builderConfig'] == null
          ? null
          : BuilderConfig.fromMap(
              (map['builderConfig'] as Map).cast<String, dynamic>(),
            ),
      materials: map['materials'] == null
          ? null
          : (map['materials'] as List).cast<String>(),
      metadata: map['metadata'] == null
          ? null
          : Metadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      recipe: map['recipe'] == null
          ? null
          : Recipe.fromMap((map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
