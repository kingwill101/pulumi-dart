// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'material_response2.dart';
import 'slsa_metadata_response2.dart';
import 'slsa_recipe_response2.dart';

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenanceResponse2 {
  /// builder is the builder of this provenance
  final Map<String, dynamic> builder;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<MaterialResponse2> materials;

  /// metadata is the metadata of the provenance
  final SlsaMetadataResponse2 metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  final SlsaRecipeResponse2 recipe;

  SlsaProvenanceResponse2({
    required this.builder,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builder'] = builder;
    map['materials'] =
        Input.encodeList<MaterialResponse2, Map<String, dynamic>>(
            materials, (value) => value.toMap());
    map['metadata'] = metadata.toMap();
    map['recipe'] = recipe.toMap();
    return map;
  }

  factory SlsaProvenanceResponse2.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceResponse2(
      builder: (map['builder'] as Map).cast<String, dynamic>(),
      materials: Input.decodeList<MaterialResponse2>(
          map['materials'],
          (value) => MaterialResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      metadata: SlsaMetadataResponse2.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      recipe: SlsaRecipeResponse2.fromMap(
          (map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
