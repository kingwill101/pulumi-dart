// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'build_metadata2.dart';
import 'provenance_builder2.dart';
import 'resource_descriptor2.dart';

class RunDetails2 {
  final ProvenanceBuilder2? builder;
  final List<ResourceDescriptor2>? byproducts;
  final BuildMetadata2? metadata;

  RunDetails2({
    this.builder,
    this.byproducts,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderValue = builder;
    if (builderValue != null) {
      map['builder'] = builderValue.toMap();
    }
    final byproductsValue = byproducts;
    if (byproductsValue != null) {
      map['byproducts'] =
          Input.encodeList<ResourceDescriptor2, Map<String, dynamic>>(
              byproductsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    return map;
  }

  factory RunDetails2.fromMap(Map<String, dynamic> map) {
    return RunDetails2(
      builder: map['builder'] == null
          ? null
          : ProvenanceBuilder2.fromMap(
              (map['builder'] as Map).cast<String, dynamic>()),
      byproducts: map['byproducts'] == null
          ? null
          : Input.decodeList<ResourceDescriptor2>(
              map['byproducts'],
              (value) => ResourceDescriptor2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : BuildMetadata2.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
