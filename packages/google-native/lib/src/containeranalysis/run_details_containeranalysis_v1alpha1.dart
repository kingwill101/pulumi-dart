// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_metadata_containeranalysis_v1alpha1.dart';
import 'provenance_builder_containeranalysis_v1alpha1.dart';
import 'resource_descriptor_containeranalysis_v1alpha1.dart';

class RunDetailsContaineranalysisV1alpha1 {
  final ProvenanceBuilderContaineranalysisV1alpha1? builder;
  final List<ResourceDescriptorContaineranalysisV1alpha1>? byproducts;
  final BuildMetadataContaineranalysisV1alpha1? metadata;

  /// Creates a new [RunDetailsContaineranalysisV1alpha1].
  /// [builder] Optional.
  /// [byproducts] Optional.
  /// [metadata] Optional.
  RunDetailsContaineranalysisV1alpha1({
    this.builder,
    this.byproducts,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builder': ?builder == null ? null : builder!.toMap(),
      'byproducts': ?byproducts == null ? null : pulumi.Input.encodeList<ResourceDescriptorContaineranalysisV1alpha1, Map<String, dynamic>>(byproducts!, (value) => value.toMap()),
      'metadata': ?metadata == null ? null : metadata!.toMap(),
    };
  }

  factory RunDetailsContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return RunDetailsContaineranalysisV1alpha1(
      builder: map['builder'] == null ? null : ProvenanceBuilderContaineranalysisV1alpha1.fromMap((map['builder'] as Map).cast<String, dynamic>()),
      byproducts: map['byproducts'] == null ? null : pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1alpha1>(map['byproducts'], (value) => ResourceDescriptorContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : BuildMetadataContaineranalysisV1alpha1.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
    );
  }
}

