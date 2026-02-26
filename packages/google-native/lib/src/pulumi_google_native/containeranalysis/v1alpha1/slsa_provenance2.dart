// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'material2.dart';
import 'slsa_builder2.dart';
import 'slsa_metadata2.dart';
import 'slsa_recipe2.dart';

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenance2 {
  /// builder is the builder of this provenance
  final SlsaBuilder2? builder;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<Material2>? materials;

  /// metadata is the metadata of the provenance
  final SlsaMetadata2? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  final SlsaRecipe2? recipe;

  SlsaProvenance2({
    this.builder,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderValue = builder;
    if (builderValue != null) {
      map['builder'] = builderValue.toMap();
    }
    final materialsValue = materials;
    if (materialsValue != null) {
      map['materials'] = Input.encodeList<Material2, Map<String, dynamic>>(
          materialsValue, (value) => value.toMap());
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

  factory SlsaProvenance2.fromMap(Map<String, dynamic> map) {
    return SlsaProvenance2(
      builder: map['builder'] == null
          ? null
          : SlsaBuilder2.fromMap(
              (map['builder'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null
          ? null
          : Input.decodeList<Material2>(
              map['materials'],
              (value) =>
                  Material2.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : SlsaMetadata2.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      recipe: map['recipe'] == null
          ? null
          : SlsaRecipe2.fromMap((map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
