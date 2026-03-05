// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceModelWithAllowedPropertySetResponseIdentity {
  /// The principal ID of resource identity. The value must be an UUID.
  final pulumi.Input<String> principalId;
  /// The tenant ID of resource. The value must be an UUID.
  final pulumi.Input<String> tenantId;
  /// The identity type.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceModelWithAllowedPropertySetResponseIdentity].
  /// [principalId] The principal ID of resource identity. The value must be an UUID.
  /// [tenantId] The tenant ID of resource. The value must be an UUID.
  /// [type] The identity type.
  ResourceModelWithAllowedPropertySetResponseIdentity({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ResourceModelWithAllowedPropertySetResponseIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceModelWithAllowedPropertySetResponseIdentity(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

