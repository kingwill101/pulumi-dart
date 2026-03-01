// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'material_containeranalysis_v1alpha1.dart';
import 'slsa_builder_containeranalysis_v1alpha1.dart';
import 'slsa_metadata_containeranalysis_v1alpha1.dart';
import 'slsa_recipe_containeranalysis_v1alpha1.dart';

/// SlsaProvenance is the slsa provenance as defined by the slsa spec.
class SlsaProvenanceContaineranalysisV1alpha1 {
  /// builder is the builder of this provenance
  final SlsaBuilderContaineranalysisV1alpha1? builder;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  final List<MaterialContaineranalysisV1alpha1>? materials;

  /// metadata is the metadata of the provenance
  final SlsaMetadataContaineranalysisV1alpha1? metadata;

  /// Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  final SlsaRecipeContaineranalysisV1alpha1? recipe;

  /// Creates a new [SlsaProvenanceContaineranalysisV1alpha1].
  /// [builder] builder is the builder of this provenance
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on. This is considered to be incomplete unless metadata.completeness.materials is true. Unset or null is equivalent to empty.
  /// [metadata] metadata is the metadata of the provenance
  /// [recipe] Identifies the configuration used for the build. When combined with materials, this SHOULD fully describe the build, such that re-running this recipe results in bit-for-bit identical output (if the build is reproducible).
  SlsaProvenanceContaineranalysisV1alpha1({
    this.builder,
    this.materials,
    this.metadata,
    this.recipe,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?builder == null ? null : builder!.toMap(),
      'materials': ?materials == null
          ? null
          : pulumi.Input.encodeList<
              MaterialContaineranalysisV1alpha1,
              Map<String, dynamic>
            >(materials!, (value) => value.toMap()),
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'recipe': ?recipe == null ? null : recipe!.toMap(),
    };
  }

  factory SlsaProvenanceContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaProvenanceContaineranalysisV1alpha1(
      builder: map['builder'] == null
          ? null
          : SlsaBuilderContaineranalysisV1alpha1.fromMap(
              (map['builder'] as Map).cast<String, dynamic>(),
            ),
      materials: map['materials'] == null
          ? null
          : pulumi.Input.decodeList<MaterialContaineranalysisV1alpha1>(
              map['materials'],
              (value) => MaterialContaineranalysisV1alpha1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      metadata: map['metadata'] == null
          ? null
          : SlsaMetadataContaineranalysisV1alpha1.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>(),
            ),
      recipe: map['recipe'] == null
          ? null
          : SlsaRecipeContaineranalysisV1alpha1.fromMap(
              (map['recipe'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
