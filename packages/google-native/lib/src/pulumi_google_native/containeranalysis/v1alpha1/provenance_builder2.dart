// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor2.dart';

class ProvenanceBuilder2 {
  final List<ResourceDescriptor2>? builderDependencies;
  final String? id;
  final Map<String, String>? version;

  ProvenanceBuilder2({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderDependenciesValue = builderDependencies;
    if (builderDependenciesValue != null) {
      map['builderDependencies'] =
          Input.encodeList<ResourceDescriptor2, Map<String, dynamic>>(
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

  factory ProvenanceBuilder2.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilder2(
      builderDependencies: map['builderDependencies'] == null
          ? null
          : Input.decodeList<ResourceDescriptor2>(
              map['builderDependencies'],
              (value) => ResourceDescriptor2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null
          ? null
          : (map['version'] as Map).cast<String, String>(),
    );
  }
}
