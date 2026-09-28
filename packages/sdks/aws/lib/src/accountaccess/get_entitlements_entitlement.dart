// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlements_entitlement_entitlement.dart';

class GetEntitlementsEntitlement {
  /// Date and time when the Entitlement was created in RFC 3339 format.
  final pulumi.Input<String> createdAt;
  /// Service-assigned unique identifier for the Entitlement.
  final pulumi.Input<String> entitlementId;
  /// Principal-role entitlement configuration. See `entitlements.entitlement` Block below.
  final pulumi.Input<List<GetEntitlementsEntitlementEntitlement>> entitlements;

  /// Creates a new [GetEntitlementsEntitlement].
  /// [createdAt] Date and time when the Entitlement was created in RFC 3339 format.
  /// [entitlementId] Service-assigned unique identifier for the Entitlement.
  /// [entitlements] Principal-role entitlement configuration. See `entitlements.entitlement` Block below.
  const GetEntitlementsEntitlement({
    required this.createdAt,
    required this.entitlementId,
    required this.entitlements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'entitlementId': entitlementId,
      'entitlements': pulumi.Input.mapInputValue<List<GetEntitlementsEntitlementEntitlement>, List<Map<String, dynamic>>>(entitlements, (value) => pulumi.Input.encodeList<GetEntitlementsEntitlementEntitlement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetEntitlementsEntitlement.fromMap(Map<String, dynamic> map) {
    return GetEntitlementsEntitlement(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      entitlementId: pulumi.Input.fromValue(map['entitlementId'] as String),
      entitlements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetEntitlementsEntitlementEntitlement>(map['entitlements']!, (value) => GetEntitlementsEntitlementEntitlement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
