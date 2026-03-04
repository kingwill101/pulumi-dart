// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VolumeClaimDataSource properties
class VolumeClaimDataSource {
  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final pulumi.Input<String>? apiGroup;

  /// Kind is the type of resource being referenced
  final pulumi.Input<String> kind;

  /// Name is the name of resource being referenced
  final pulumi.Input<String> name;

  /// Creates a new [VolumeClaimDataSource].
  /// [apiGroup] APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  /// [kind] Kind is the type of resource being referenced
  /// [name] Name is the name of resource being referenced
  VolumeClaimDataSource({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apiGroup': ?apiGroup, 'kind': kind, 'name': name};
  }

  factory VolumeClaimDataSource.fromMap(Map<String, dynamic> map) {
    return VolumeClaimDataSource(
      apiGroup: (() {
        final guardedValue = map['apiGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
