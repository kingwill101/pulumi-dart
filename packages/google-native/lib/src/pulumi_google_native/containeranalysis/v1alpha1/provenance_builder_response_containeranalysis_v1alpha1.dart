// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor_response_containeranalysis_v1alpha1.dart';

class ProvenanceBuilderResponseContaineranalysisV1alpha1 {
  final List<ResourceDescriptorResponseContaineranalysisV1alpha1>
      builderDependencies;
  final Map<String, String> version;

  ProvenanceBuilderResponseContaineranalysisV1alpha1({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderDependencies'] = pulumi.Input.encodeList<
        ResourceDescriptorResponseContaineranalysisV1alpha1,
        Map<String, dynamic>>(builderDependencies, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory ProvenanceBuilderResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ProvenanceBuilderResponseContaineranalysisV1alpha1(
      builderDependencies: pulumi.Input.decodeList<
              ResourceDescriptorResponseContaineranalysisV1alpha1>(
          map['builderDependencies'],
          (value) =>
              ResourceDescriptorResponseContaineranalysisV1alpha1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      version: (map['version'] as Map).cast<String, String>(),
    );
  }
}
