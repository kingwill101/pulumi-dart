// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Virtual Network reference type.
class ManagedVirtualNetworkReferenceResponse {
  /// Reference ManagedVirtualNetwork name.
  final pulumi.Input<String> referenceName;
  /// Managed Virtual Network reference type.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedVirtualNetworkReferenceResponse].
  /// [referenceName] Reference ManagedVirtualNetwork name.
  /// [type] Managed Virtual Network reference type.
  const ManagedVirtualNetworkReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory ManagedVirtualNetworkReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedVirtualNetworkReferenceResponse(
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

