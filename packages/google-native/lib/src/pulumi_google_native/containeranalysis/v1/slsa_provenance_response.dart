// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'material_response.dart';
import 'slsa_metadata_response.dart';
import 'slsa_recipe_response.dart';

class SlsaProvenanceResponse {
  /// required
  final Map<String, dynamic> builder;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<MaterialResponse> materials;
  final SlsaMetadataResponse metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible). required
  final SlsaRecipeResponse recipe;

  SlsaProvenanceResponse({
    required this.builder,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builder'] = builder;
    map['materials'] = Input.encodeList<MaterialResponse, Map<String, dynamic>>(
        materials, (value) => value.toMap());
    map['metadata'] = metadata.toMap();
    map['recipe'] = recipe.toMap();
    return map;
  }

  factory SlsaProvenanceResponse.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceResponse(
      builder: (map['builder'] as Map).cast<String, dynamic>(),
      materials: Input.decodeList<MaterialResponse>(
          map['materials'],
          (value) =>
              MaterialResponse.fromMap((value as Map).cast<String, dynamic>())),
      metadata: SlsaMetadataResponse.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      recipe: SlsaRecipeResponse.fromMap(
          (map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}
