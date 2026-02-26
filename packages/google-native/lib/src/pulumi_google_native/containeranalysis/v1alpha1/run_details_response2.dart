// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'build_metadata_response2.dart';
import 'provenance_builder_response2.dart';
import 'resource_descriptor_response2.dart';

class RunDetailsResponse2 {
  final ProvenanceBuilderResponse2 builder;
  final List<ResourceDescriptorResponse2> byproducts;
  final BuildMetadataResponse2 metadata;

  RunDetailsResponse2({
    required this.builder,
    required this.byproducts,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builder'] = builder.toMap();
    map['byproducts'] =
        Input.encodeList<ResourceDescriptorResponse2, Map<String, dynamic>>(
            byproducts, (value) => value.toMap());
    map['metadata'] = metadata.toMap();
    return map;
  }

  factory RunDetailsResponse2.fromMap(Map<String, dynamic> map) {
    return RunDetailsResponse2(
      builder: ProvenanceBuilderResponse2.fromMap(
          (map['builder'] as Map).cast<String, dynamic>()),
      byproducts: Input.decodeList<ResourceDescriptorResponse2>(
          map['byproducts'],
          (value) => ResourceDescriptorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      metadata: BuildMetadataResponse2.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
