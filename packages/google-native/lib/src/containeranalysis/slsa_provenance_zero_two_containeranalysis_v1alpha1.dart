// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_builder.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_invocation.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_material.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_metadata.dart';

/// SlsaProvenanceZeroTwo is the slsa provenance as defined by the slsa spec. See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwoContaineranalysisV1alpha1 {
  /// Lists the steps in the build.
  final Map<String, String>? buildConfig;

  /// URI indicating what type of build was performed.
  final String? buildType;

  /// Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder?
  builder;

  /// Identifies the event that kicked off the build.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation?
  invocation;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
  final List<
    GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
  >?
  materials;

  /// Other properties of the build.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata?
  metadata;

  /// Creates a new [SlsaProvenanceZeroTwoContaineranalysisV1alpha1].
  /// [buildConfig] Lists the steps in the build.
  /// [buildType] URI indicating what type of build was performed.
  /// [builder] Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
  /// [invocation] Identifies the event that kicked off the build.
  /// [materials] The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
  /// [metadata] Other properties of the build.
  SlsaProvenanceZeroTwoContaineranalysisV1alpha1({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildConfig': ?buildConfig,
      'buildType': ?buildType,
      'builder': ?builder == null ? null : builder!.toMap(),
      'invocation': ?invocation == null ? null : invocation!.toMap(),
      'materials': ?materials == null
          ? null
          : pulumi.Input.encodeList<
              GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial,
              Map<String, dynamic>
            >(materials!, (value) => value.toMap()),
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory SlsaProvenanceZeroTwoContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SlsaProvenanceZeroTwoContaineranalysisV1alpha1(
      buildConfig: map['buildConfig'] == null
          ? null
          : (map['buildConfig'] as Map).cast<String, String>(),
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      builder: map['builder'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder.fromMap(
              (map['builder'] as Map).cast<String, dynamic>(),
            ),
      invocation: map['invocation'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(
              (map['invocation'] as Map).cast<String, dynamic>(),
            ),
      materials: map['materials'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
            >(
              map['materials'],
              (value) =>
                  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      metadata: map['metadata'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
