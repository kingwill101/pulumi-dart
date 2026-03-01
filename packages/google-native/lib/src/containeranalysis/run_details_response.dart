// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_response.dart';
import 'provenance_builder_response.dart';
import 'resource_descriptor_response.dart';

class RunDetailsResponse {
  final ProvenanceBuilderResponse builder;
  final List<ResourceDescriptorResponse> byproducts;
  final BuildMetadataResponse metadata;

  /// Creates a new [RunDetailsResponse].
  /// [builder] Required.
  /// [byproducts] Required.
  /// [metadata] Required.
  RunDetailsResponse({
    required this.builder,
    required this.byproducts,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': builder.toMap(),
      'byproducts':
          pulumi.Input.encodeList<
            ResourceDescriptorResponse,
            Map<String, dynamic>
          >(byproducts, (value) => value.toMap()),
      'metadata': metadata.toMap(),
    };
  }

  factory RunDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RunDetailsResponse(
      builder: ProvenanceBuilderResponse.fromMap(
        (map['builder'] as Map).cast<String, dynamic>(),
      ),
      byproducts: pulumi.Input.decodeList<ResourceDescriptorResponse>(
        map['byproducts'],
        (value) => ResourceDescriptorResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      metadata: BuildMetadataResponse.fromMap(
        (map['metadata'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
