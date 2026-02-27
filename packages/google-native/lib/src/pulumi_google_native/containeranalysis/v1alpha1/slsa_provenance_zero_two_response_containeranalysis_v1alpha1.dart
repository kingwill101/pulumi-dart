// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_invocation_response.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_material_response.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_metadata_response.dart';

/// SlsaProvenanceZeroTwo is the slsa provenance as defined by the slsa spec. See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1 {
  /// Lists the steps in the build.
  final Map<String, String> buildConfig;

  /// URI indicating what type of build was performed.
  final String buildType;

  /// Identifies the entity that executed the recipe, which is trusted to have correctly performed the operation and populated this provenance.
  final Map<String, dynamic> builder;

  /// Identifies the event that kicked off the build.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse
      invocation;

  /// The collection of artifacts that influenced the build including sources, dependencies, build tools, base images, and so on.
  final List<
          GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse>
      materials;

  /// Other properties of the build.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse
      metadata;

  SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1({
    required this.buildConfig,
    required this.buildType,
    required this.builder,
    required this.invocation,
    required this.materials,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['buildConfig'] = buildConfig;
    map['buildType'] = buildType;
    map['builder'] = builder;
    map['invocation'] = invocation.toMap();
    map['materials'] = pulumi.Input.encodeList<
        GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse,
        Map<String, dynamic>>(materials, (value) => value.toMap());
    map['metadata'] = metadata.toMap();
    return map;
  }

  factory SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1(
      buildConfig: (map['buildConfig'] as Map).cast<String, String>(),
      buildType: map['buildType'] as String,
      builder: (map['builder'] as Map).cast<String, dynamic>(),
      invocation:
          GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocationResponse
              .fromMap((map['invocation'] as Map).cast<String, dynamic>()),
      materials: pulumi.Input.decodeList<
              GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse>(
          map['materials'],
          (value) =>
              GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterialResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      metadata:
          GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadataResponse
              .fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
