// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a managed private endpoint
class ManagedPrivateEndpoint {
  /// Fully qualified domain names
  final pulumi.Input<List<String>>? fqdns;
  /// The groupId to which the managed private endpoint is created
  final pulumi.Input<String>? groupId;
  /// The ARM resource ID of the resource to which the managed private endpoint is created
  final pulumi.Input<String>? privateLinkResourceId;

  /// Creates a new [ManagedPrivateEndpoint].
  /// [fqdns] Fully qualified domain names
  /// [groupId] The groupId to which the managed private endpoint is created
  /// [privateLinkResourceId] The ARM resource ID of the resource to which the managed private endpoint is created
  ManagedPrivateEndpoint({
    this.fqdns,
    this.groupId,
    this.privateLinkResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdns': ?fqdns,
      'groupId': ?groupId,
      'privateLinkResourceId': ?privateLinkResourceId,
    };
  }

  factory ManagedPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpoint(
      fqdns: (() { final guardedValue = map['fqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

