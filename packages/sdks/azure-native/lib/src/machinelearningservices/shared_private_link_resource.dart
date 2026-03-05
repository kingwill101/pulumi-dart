// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SharedPrivateLinkResource {
  /// The private link resource group id.
  final pulumi.Input<String>? groupId;
  /// Unique name of the private link.
  final pulumi.Input<String>? name;
  /// The resource id that private link links to.
  final pulumi.Input<String>? privateLinkResourceId;
  /// Request message.
  final pulumi.Input<String>? requestMessage;
  /// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  final pulumi.Input<String>? status;

  /// Creates a new [SharedPrivateLinkResource].
  /// [groupId] The private link resource group id.
  /// [name] Unique name of the private link.
  /// [privateLinkResourceId] The resource id that private link links to.
  /// [requestMessage] Request message.
  /// [status] Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  SharedPrivateLinkResource({
    this.groupId,
    this.name,
    this.privateLinkResourceId,
    this.requestMessage,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'requestMessage': ?requestMessage,
      'status': ?status,
    };
  }

  factory SharedPrivateLinkResource.fromMap(Map<String, dynamic> map) {
    return SharedPrivateLinkResource(
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: (() { final guardedValue = map['privateLinkResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

