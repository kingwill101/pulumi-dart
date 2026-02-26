// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'resource_descriptor3.dart';

class ProvenanceBuilder3 {
  final List<ResourceDescriptor3>? builderDependencies;
  final String? id;
  final Map<String, String>? version;

  ProvenanceBuilder3({
    this.builderDependencies,
    this.id,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final builderDependenciesValue = builderDependencies;
    if (builderDependenciesValue != null) {
      map['builderDependencies'] =
          Input.encodeList<ResourceDescriptor3, Map<String, dynamic>>(
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

  factory ProvenanceBuilder3.fromMap(Map<String, dynamic> map) {
    return ProvenanceBuilder3(
      builderDependencies: map['builderDependencies'] == null
          ? null
          : Input.decodeList<ResourceDescriptor3>(
              map['builderDependencies'],
              (value) => ResourceDescriptor3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      version: map['version'] == null
          ? null
          : (map['version'] as Map).cast<String, String>(),
    );
  }
}
