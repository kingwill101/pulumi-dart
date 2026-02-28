// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [SlsaProvenanceZeroTwo].
  /// [buildConfig] Optional.
  /// [buildType] Optional.
  /// [builder] Optional.
  /// [invocation] Optional.
  /// [materials] Optional.
  /// [metadata] Optional.
  SlsaProvenanceZeroTwo({
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
      'materials': ?materials == null ? null : pulumi.Input.encodeList<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial, Map<String, dynamic>>(materials!, (value) => value.toMap()),
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory SlsaProvenanceZeroTwo.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwo(
      buildConfig: map['buildConfig'] == null ? null : (map['buildConfig'] as Map).cast<String, String>(),
      buildType: map['buildType'] == null ? null : map['buildType'] as String,
      builder: map['builder'] == null ? null : GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromMap((map['builder'] as Map).cast<String, dynamic>()),
      invocation: map['invocation'] == null ? null : GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromMap((map['invocation'] as Map).cast<String, dynamic>()),
      materials: map['materials'] == null ? null : pulumi.Input.decodeList<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>(map['materials'], (value) => GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

