// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'build_metadata_response3.dart';
import 'provenance_builder_response3.dart';
import 'resource_descriptor_response3.dart';

class RunDetailsResponse3 {
  final ProvenanceBuilderResponse3 builder;
  final List<ResourceDescriptorResponse3> byproducts;
  final BuildMetadataResponse3 metadata;

  RunDetailsResponse3({
    required this.builder,
    required this.byproducts,
    required this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builder'] = builder.toMap();
    map['byproducts'] =
        Input.encodeList<ResourceDescriptorResponse3, Map<String, dynamic>>(
            byproducts, (value) => value.toMap());
    map['metadata'] = metadata.toMap();
    return map;
  }

  factory RunDetailsResponse3.fromMap(Map<String, dynamic> map) {
    return RunDetailsResponse3(
      builder: ProvenanceBuilderResponse3.fromMap(
          (map['builder'] as Map).cast<String, dynamic>()),
      byproducts: Input.decodeList<ResourceDescriptorResponse3>(
          map['byproducts'],
          (value) => ResourceDescriptorResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      metadata: BuildMetadataResponse3.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
