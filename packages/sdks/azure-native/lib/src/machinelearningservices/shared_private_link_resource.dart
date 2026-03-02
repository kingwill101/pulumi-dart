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
      groupId: map['groupId'] == null ? null : (map['groupId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : (map['privateLinkResourceId'] as String).input(),
      requestMessage: map['requestMessage'] == null ? null : (map['requestMessage'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

