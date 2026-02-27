// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_descriptor.dart';

class ProvenanceBuilder {
  final List<ResourceDescriptor>? builderDependencies;
  final String? id;
  final Map<String, String>? version;

  ProvenanceBuilder({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderDependenciesValue = builderDependencies;
    if (builderDependenciesValue != null) {
      map['builderDependencies'] =
          pulumi.Input.encodeList<ResourceDescriptor, Map<String, dynamic>>(
              builderDependenciesValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory ProvenanceBuilder.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilder(
      builderDependencies: map['builderDependencies'] == null
          ? null
          : pulumi.Input.decodeList<ResourceDescriptor>(
              map['builderDependencies'],
              (value) => ResourceDescriptor.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null
          ? null
          : (map['version'] as Map).cast<String, String>(),
    );
  }
}
