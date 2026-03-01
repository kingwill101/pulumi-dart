// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_containeranalysis_v1beta1.dart';

class ProvenanceBuilderContaineranalysisV1beta1 {
  final List<ResourceDescriptorContaineranalysisV1beta1>? builderDependencies;
  final String? id;
  final Map<String, String>? version;

  /// Creates a new [ProvenanceBuilderContaineranalysisV1beta1].
  /// [builderDependencies] Optional.
  /// [id] Optional.
  /// [version] Optional.
  ProvenanceBuilderContaineranalysisV1beta1({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies': ?builderDependencies == null
          ? null
          : pulumi.Input.encodeList<
              ResourceDescriptorContaineranalysisV1beta1,
              Map<String, dynamic>
            >(builderDependencies!, (value) => value.toMap()),
      'id': ?id,
      'version': ?version,
    };
  }

  factory ProvenanceBuilderContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProvenanceBuilderContaineranalysisV1beta1(
      builderDependencies: map['builderDependencies'] == null
          ? null
          : pulumi.Input.decodeList<ResourceDescriptorContaineranalysisV1beta1>(
              map['builderDependencies'],
              (value) => ResourceDescriptorContaineranalysisV1beta1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null
          ? null
          : (map['version'] as Map).cast<String, String>(),
    );
  }
}
