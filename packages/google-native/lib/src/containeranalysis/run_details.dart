// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata.dart';
import 'provenance_builder.dart';
import 'resource_descriptor.dart';

class RunDetails {
  final ProvenanceBuilder? builder;
  final List<ResourceDescriptor>? byproducts;
  final BuildMetadata? metadata;

  /// Creates a new [RunDetails].
  /// [builder] Optional.
  /// [byproducts] Optional.
  /// [metadata] Optional.
  RunDetails({
    this.builder,
    this.byproducts,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?builder == null ? null : builder!.toMap(),
      'byproducts': ?byproducts == null ? null : pulumi.Input.encodeList<ResourceDescriptor, Map<String, dynamic>>(byproducts!, (value) => value.toMap()),
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory RunDetails.fromMap(Map<String, dynamic> map) {
    return RunDetails(
      builder: map['builder'] == null ? null : ProvenanceBuilder.fromMap((map['builder'] as Map).cast<String, dynamic>()),
      byproducts: map['byproducts'] == null ? null : pulumi.Input.decodeList<ResourceDescriptor>(map['byproducts'], (value) => ResourceDescriptor.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : BuildMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

