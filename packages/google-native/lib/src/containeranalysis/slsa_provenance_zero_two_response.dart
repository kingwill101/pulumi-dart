// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1_slsa_provenance_zero_two_slsa_invocation_response.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_material_response.dart';
import 'grafeas_v1_slsa_provenance_zero_two_slsa_metadata_response.dart';

/// See full explanation of fields at slsa.dev/provenance/v0.2.
class SlsaProvenanceZeroTwoResponse {
  final Map<String, String> buildConfig;
  final String buildType;
  final Map<String, dynamic> builder;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse invocation;
  final List<GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse> materials;
  final GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse metadata;

  /// Creates a new [SlsaProvenanceZeroTwoResponse].
  /// [buildConfig] Required.
  /// [buildType] Required.
  /// [builder] Required.
  /// [invocation] Required.
  /// [materials] Required.
  /// [metadata] Required.
  SlsaProvenanceZeroTwoResponse({
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
        GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse,
        Map<String, dynamic>>(materials, (value) => value.toMap());
    map['metadata'] = metadata.toMap();
    return map;
  }

  factory SlsaProvenanceZeroTwoResponse.fromMap(Map<String, dynamic> map) {
    return SlsaProvenanceZeroTwoResponse(
      buildConfig: (map['buildConfig'] as Map).cast<String, String>(),
      buildType: map['buildType'] as String,
      builder: (map['builder'] as Map).cast<String, dynamic>(),
      invocation: GrafeasV1SlsaProvenanceZeroTwoSlsaInvocationResponse.fromMap(
          (map['invocation'] as Map).cast<String, dynamic>()),
      materials: pulumi.Input.decodeList<
              GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse>(
          map['materials'],
          (value) => GrafeasV1SlsaProvenanceZeroTwoSlsaMaterialResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      metadata: GrafeasV1SlsaProvenanceZeroTwoSlsaMetadataResponse.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
