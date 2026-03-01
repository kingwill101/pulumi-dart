// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

class ResourceModelWithAllowedPropertySetIdentity {
  /// The identity type.
  final ResourceIdentityType? type;

  /// Creates a new [ResourceModelWithAllowedPropertySetIdentity].
  /// [type] The identity type.
  ResourceModelWithAllowedPropertySetIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type == null ? null : type!.value,
    };
  }

  factory ResourceModelWithAllowedPropertySetIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceModelWithAllowedPropertySetIdentity(
      type: map['type'] == null ? null : ResourceIdentityType.fromValue(map['type'] as String),
    );
  }
}

