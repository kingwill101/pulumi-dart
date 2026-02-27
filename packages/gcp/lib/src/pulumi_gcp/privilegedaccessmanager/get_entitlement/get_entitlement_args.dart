// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntitlement.
class GetEntitlementArgs {
  /// ID of the Entitlement resource. This is the last part of the Entitlement's full name which is of the format `{parent}/locations/{location}/entitlements/{entitlement_id}`.
  final pulumi.Input<String>? entitlementId;

  /// The region of the Entitlement resource.
  final pulumi.Input<String>? location;

  /// The project or folder or organization that contains the resource. Format: projects/{project-id|project-number} or folders/{folder-number}  or organizations/{organization-number}
  final pulumi.Input<String>? parent;

  GetEntitlementArgs({
    this.entitlementId,
    this.location,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final entitlementIdValue = entitlementId;
    if (entitlementIdValue != null) {
      map['entitlementId'] = entitlementIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    return map;
  }

  factory GetEntitlementArgs.fromMap(Map<String, dynamic> map) {
    return GetEntitlementArgs(
      entitlementId: pulumi.Input.asOptionalInput<String>(map['entitlementId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
    );
  }
}
