// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information of user assigned identity used by this add-on.
class ManagedClusterAddonProfileResponseIdentity {
  /// The client ID of the user assigned identity.
  final pulumi.Input<String>? clientId;
  /// The object ID of the user assigned identity.
  final pulumi.Input<String>? objectId;
  /// The resource ID of the user assigned identity.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ManagedClusterAddonProfileResponseIdentity].
  /// [clientId] The client ID of the user assigned identity.
  /// [objectId] The object ID of the user assigned identity.
  /// [resourceId] The resource ID of the user assigned identity.
  const ManagedClusterAddonProfileResponseIdentity({
    this.clientId,
    this.objectId,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
      'resourceId': ?resourceId,
    };
  }

  factory ManagedClusterAddonProfileResponseIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAddonProfileResponseIdentity(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

