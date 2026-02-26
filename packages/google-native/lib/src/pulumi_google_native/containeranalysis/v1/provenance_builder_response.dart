// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor_response.dart';

class ProvenanceBuilderResponse {
  final List<ResourceDescriptorResponse> builderDependencies;
  final Map<String, String> version;

  ProvenanceBuilderResponse({
    required this.builderDependencies,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['builderDependencies'] =
        Input.encodeList<ResourceDescriptorResponse, Map<String, dynamic>>(
            builderDependencies, (value) => value.toMap());
    map['version'] = version;
    return map;
  }

  factory ProvenanceBuilderResponse.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilderResponse(
      builderDependencies: Input.decodeList<ResourceDescriptorResponse>(
          map['builderDependencies'],
          (value) => ResourceDescriptorResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      version: (map['version'] as Map).cast<String, String>(),
    );
  }
}
