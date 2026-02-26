// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor_response3.dart';

class ProvenanceBuilderResponse3 {
  final List<ResourceDescriptorResponse3> builderDependencies;
  final Map<String, String> version;

  ProvenanceBuilderResponse3({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderDependencies'] =
        Input.encodeList<ResourceDescriptorResponse3, Map<String, dynamic>>(
            builderDependencies, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory ProvenanceBuilderResponse3.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilderResponse3(
      builderDependencies: Input.decodeList<ResourceDescriptorResponse3>(
          map['builderDependencies'],
          (value) => ResourceDescriptorResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: (map['version'] as Map).cast<String, String>(),
    );
  }
}
