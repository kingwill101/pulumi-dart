// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'build_metadata3.dart';
import 'provenance_builder3.dart';
import 'resource_descriptor3.dart';

class RunDetails3 {
  final ProvenanceBuilder3? builder;
  final List<ResourceDescriptor3>? byproducts;
  final BuildMetadata3? metadata;

  RunDetails3({
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
          Input.encodeList<ResourceDescriptor3, Map<String, dynamic>>(
              byproductsValue, (value) => value.toMap());
    }
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    return map;
  }

  factory RunDetails3.fromMap(Map<String, dynamic> map) {
    return RunDetails3(
      builder: map['builder'] == null
          ? null
          : ProvenanceBuilder3.fromMap(
              (map['builder'] as Map).cast<String, dynamic>()),
      byproducts: map['byproducts'] == null
          ? null
          : Input.decodeList<ResourceDescriptor3>(
              map['byproducts'],
              (value) => ResourceDescriptor3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null
          ? null
          : BuildMetadata3.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}
