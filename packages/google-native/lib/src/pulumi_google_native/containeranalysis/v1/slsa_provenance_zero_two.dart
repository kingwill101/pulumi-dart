// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_builder.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_invocation.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_material.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_metadata.dart';

/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwo {
  final Map<String, String>? buildConfig;
  final String? buildType;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder? builder;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation? invocation;
  final List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>? materials;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata? metadata;

  SlsaProvenanceZeroTwo({
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
          GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial,
          Map<String, dynamic>>(materialsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    return map;
  }

  factory SlsaProvenanceZeroTwo.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwo(
      buildConfig: map['buildConfig'] == null
          ? null
          : (map['buildConfig'] as Map).cast<String, String>(),
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      builder: map['builder'] == null
          ? null
          : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromMap(
              (map['builder'] as Map).cast<String, dynamic>()),
      invocation: map['invocation'] == null
          ? null
          : GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromMap(
              (map['invocation'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null
          ? null
          : Input.decodeList<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>(
              map['materials'],
              (value) => GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
