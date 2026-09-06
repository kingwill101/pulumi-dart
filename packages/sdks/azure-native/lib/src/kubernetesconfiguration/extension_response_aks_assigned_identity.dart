// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity of the Extension resource in an AKS cluster
class ExtensionResponseAksAssignedIdentity {
  /// The principal ID of resource identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String> tenantId;
  /// The identity type.
  final pulumi.Input<String?>? type;

  /// Creates a new [ExtensionResponseAksAssignedIdentity].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  const ExtensionResponseAksAssignedIdentity({
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

  factory ExtensionResponseAksAssignedIdentity.fromMap(Map<String, dynamic> map) {
    return ExtensionResponseAksAssignedIdentity(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
