// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response_containeranalysis_v1beta1.dart';

class ProvenanceBuilderResponseContaineranalysisV1beta1 {
  final List<ResourceDescriptorResponseContaineranalysisV1beta1>
  builderDependencies;
  final Map<String, String> version;

  /// Creates a new [ProvenanceBuilderResponseContaineranalysisV1beta1].
  /// [builderDependencies] Required.
  /// [version] Required.
  ProvenanceBuilderResponseContaineranalysisV1beta1({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderDependencies':
          pulumi.Input.encodeList<
            ResourceDescriptorResponseContaineranalysisV1beta1,
            Map<String, dynamic>
          >(builderDependencies, (value) => value.toMap()),
      'version': version,
    };
  }

  factory ProvenanceBuilderResponseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProvenanceBuilderResponseContaineranalysisV1beta1(
      builderDependencies:
          pulumi.Input.decodeList<
            ResourceDescriptorResponseContaineranalysisV1beta1
          >(
            map['builderDependencies'],
            (value) =>
                ResourceDescriptorResponseContaineranalysisV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      version: (map['version'] as Map).cast<String, String>(),
    );
  }
}
