// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_builder.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_invocation.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_material.dart';
import 'google_devtools_containeranalysis_v1alpha1_slsa_provenance_zero_two_slsa_metadata.dart';

/// SlsaProvenanceZeroTwo is the slsa provenance as defined by the slsa spec. See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwo2 {
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
          GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial>?
      materials;

  /// Other properties of the build.
  final GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata?
      metadata;

  SlsaProvenanceZeroTwo2({
    this.buildConfig,
    this.buildType,
    this.builder,
    this.invocation,
    this.materials,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildConfigValue = buildConfig;
    if (buildConfigValue != null) {
      map['buildConfig'] = buildConfigValue;
    }
    final buildTypeValue = buildType;
    if (buildTypeValue != null) {
      map['buildType'] = buildTypeValue;
    }
    final builderValue = builder;
    if (builderValue != null) {
      map['builder'] = builderValue.toMap();
    }
    final invocationValue = invocation;
    if (invocationValue != null) {
      map['invocation'] = invocationValue.toMap();
    }
    final materialsValue = materials;
    if (materialsValue != null) {
      map['materials'] = Input.encodeList<
          GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial,
          Map<String, dynamic>>(materialsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    return map;
  }

  factory SlsaProvenanceZeroTwo2.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwo2(
      buildConfig: map['buildConfig'] == null
          ? null
          : (map['buildConfig'] as Map).cast<String, String>(),
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      builder: map['builder'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder
              .fromMap((map['builder'] as Map).cast<String, dynamic>()),
      invocation: map['invocation'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation
              .fromMap((map['invocation'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null
          ? null
          : Input.decodeList<
                  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial>(
              map['materials'],
              (value) =>
                  GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
                      .fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata
              .fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
