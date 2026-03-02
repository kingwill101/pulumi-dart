// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity of the Extension resource in an AKS cluster
class ExtensionResponseAksAssignedIdentity {
  /// The principal ID of resource identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String> tenantId;
  /// The identity type.
  final pulumi.Input<String>? type;

  /// Creates a new [ExtensionResponseAksAssignedIdentity].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  /// [type] The identity type.
  ExtensionResponseAksAssignedIdentity({
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
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

