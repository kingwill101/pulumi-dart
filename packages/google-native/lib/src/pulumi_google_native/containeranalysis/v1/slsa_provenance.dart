// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material.dart';
import 'slsa_builder.dart';
import 'slsa_metadata.dart';
import 'slsa_recipe.dart';

class SlsaProvenance {
  /// required
  final SlsaBuilder? builder;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<Material>? materials;
  final SlsaMetadata? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final SlsaRecipe? recipe;

  SlsaProvenance({
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
      map['materials'] =
          pulumi.Input.encodeList<Material, Map<String, dynamic>>(
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

  factory SlsaProvenance.fromMap(Map<String, dynamic> map) {
    return SlsaProvenance(
      builder: map['builder'] == null
          ? null
          : SlsaBuilder.fromMap(
              (map['builder'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null
          ? null
          : pulumi.Input.decodeList<Material>(
              map['materials'],
              (value) =>
                  Material.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : SlsaMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      recipe: map['recipe'] == null
          ? null
          : SlsaRecipe.fromMap((map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
