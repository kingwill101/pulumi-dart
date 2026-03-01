// ignore_for_file: unused_element, unnecessary_cast

import 'resource_type_registration_properties.dart';

/// Concrete proxy resource types can be created by aliasing this type using a specific property type.
class ResourceTypeRegistration {
  /// Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  final ResourceTypeRegistrationProperties? properties;

  /// Creates a new [ResourceTypeRegistration].
  /// [kind] Resource type registration kind. This Metadata is also used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [properties] Optional.
  ResourceTypeRegistration({
    this.kind,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory ResourceTypeRegistration.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistration(
      kind: map['kind'] == null ? null : map['kind'] as String,
      properties: map['properties'] == null ? null : ResourceTypeRegistrationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

