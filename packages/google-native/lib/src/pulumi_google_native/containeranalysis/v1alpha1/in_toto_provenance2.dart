// ignore_for_file: unused_element, unnecessary_cast

import 'builder_config2.dart';
import 'metadata5.dart';
import 'recipe2.dart';

class InTotoProvenance2 {
  /// required
  final BuilderConfig2? builderConfig;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<String>? materials;
  final Metadata5? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final Recipe2? recipe;

  InTotoProvenance2({
    this.builderConfig,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderConfigValue = builderConfig;
    if (builderConfigValue != null) {
      map['builderConfig'] = builderConfigValue.toMap();
    }
    final materialsValue = materials;
    if (materialsValue != null) {
      map['materials'] = materialsValue;
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    final recipeValue = recipe;
    if (recipeValue != null) {
      map['recipe'] = recipeValue.toMap();
    }
    return map;
  }

  factory InTotoProvenance2.fromMap(Map<String, dynamic> map) {
    return InTotoProvenance2(
      builderConfig: map['builderConfig'] == null
          ? null
          : BuilderConfig2.fromMap(
              (map['builderConfig'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null
          ? null
          : (map['materials'] as List).cast<String>(),
      metadata: map['metadata'] == null
          ? null
          : Metadata5.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      recipe: map['recipe'] == null
          ? null
          : Recipe2.fromMap((map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
