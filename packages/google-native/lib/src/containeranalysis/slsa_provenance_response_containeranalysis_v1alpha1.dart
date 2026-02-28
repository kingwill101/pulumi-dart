// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material_response_containeranalysis_v1alpha1.dart';
import 'slsa_metadata_response_containeranalysis_v1alpha1.dart';
import 'slsa_recipe_response_containeranalysis_v1alpha1.dart';

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenanceResponseContaineranalysisV1alpha1 {
  /// builder is the builder of this provenance
  final Map<String, dynamic> builder;
  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<MaterialResponseContaineranalysisV1alpha1> materials;
  /// metadata is the metadata of the provenance
  final SlsaMetadataResponseContaineranalysisV1alpha1 metadata;
  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  final SlsaRecipeResponseContaineranalysisV1alpha1 recipe;

  /// Creates a new [SlsaProvenanceResponseContaineranalysisV1alpha1].
  /// [builder] builder is the builder of this provenance
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] metadata is the metadata of the provenance
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  SlsaProvenanceResponseContaineranalysisV1alpha1({
    required this.builder,
    required this.materials,
    required this.metadata,
    required this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': builder,
      'materials': pulumi.Input.encodeList<MaterialResponseContaineranalysisV1alpha1, Map<String, dynamic>>(materials, (value) => value.toMap()),
      'metadata': metadata.toMap(),
      'recipe': recipe.toMap(),
    };
  }

  factory SlsaProvenanceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceResponseContaineranalysisV1alpha1(
      builder: (map['builder'] as Map).cast<String, dynamic>(),
      materials: pulumi.Input.decodeList<MaterialResponseContaineranalysisV1alpha1>(map['materials'], (value) => MaterialResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      metadata: SlsaMetadataResponseContaineranalysisV1alpha1.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      recipe: SlsaRecipeResponseContaineranalysisV1alpha1.fromMap((map['recipe'] as Map).cast<String, dynamic>()),
    );
  }
}

