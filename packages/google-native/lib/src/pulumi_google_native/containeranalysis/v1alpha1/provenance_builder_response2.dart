// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor_response2.dart';

class ProvenanceBuilderResponse2 {
  final List<ResourceDescriptorResponse2> builderDependencies;
  final Map<String, String> version;

  ProvenanceBuilderResponse2({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderDependencies'] =
        Input.encodeList<ResourceDescriptorResponse2, Map<String, dynamic>>(
            builderDependencies, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory ProvenanceBuilderResponse2.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilderResponse2(
      builderDependencies: Input.decodeList<ResourceDescriptorResponse2>(
          map['builderDependencies'],
          (value) => ResourceDescriptorResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: (map['version'] as Map).cast<String, String>(),
    );
  }
}
