// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_response_containeranalysis_v1beta1.dart';
import 'provenance_builder_response_containeranalysis_v1beta1.dart';
import 'resource_descriptor_response_containeranalysis_v1beta1.dart';

class RunDetailsResponseContaineranalysisV1beta1 {
  final ProvenanceBuilderResponseContaineranalysisV1beta1 builder;
  final List<ResourceDescriptorResponseContaineranalysisV1beta1> byproducts;
  final BuildMetadataResponseContaineranalysisV1beta1 metadata;

  /// Creates a new [RunDetailsResponseContaineranalysisV1beta1].
  /// [builder] Required.
  /// [byproducts] Required.
  /// [metadata] Required.
  RunDetailsResponseContaineranalysisV1beta1({
    required this.builder,
    required this.byproducts,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': builder.toMap(),
      'byproducts': pulumi.Input.encodeList<ResourceDescriptorResponseContaineranalysisV1beta1, Map<String, dynamic>>(byproducts, (value) => value.toMap()),
      'metadata': metadata.toMap(),
    };
  }

  factory RunDetailsResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RunDetailsResponseContaineranalysisV1beta1(
      builder: ProvenanceBuilderResponseContaineranalysisV1beta1.fromMap((map['builder'] as Map).cast<String, dynamic>()),
      byproducts: pulumi.Input.decodeList<ResourceDescriptorResponseContaineranalysisV1beta1>(map['byproducts'], (value) => ResourceDescriptorResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>())),
      metadata: BuildMetadataResponseContaineranalysisV1beta1.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

