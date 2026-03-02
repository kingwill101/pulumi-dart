// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

class ResourceModelWithAllowedPropertySetIdentity {
  /// The identity type.
  final pulumi.Input<ResourceIdentityType>? type;

  /// Creates a new [ResourceModelWithAllowedPropertySetIdentity].
  /// [type] The identity type.
  ResourceModelWithAllowedPropertySetIdentity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?pulumi.Input.mapOptionalInputValue<ResourceIdentityType, String>(type, (value) => value.value),
    };
  }

  factory ResourceModelWithAllowedPropertySetIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceModelWithAllowedPropertySetIdentity(
      type: map['type'] == null ? null : (ResourceIdentityType.fromValue(map['type']! as String)).input(),
    );
  }
}

