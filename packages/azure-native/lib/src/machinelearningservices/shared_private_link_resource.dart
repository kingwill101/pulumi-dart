// ignore_for_file: unused_element, unnecessary_cast


class SharedPrivateLinkResource {
  /// The private link resource group id.
  final String? groupId;
  /// Unique name of the private link.
  final String? name;
  /// The resource id that private link links to.
  final String? privateLinkResourceId;
  /// Request message.
  final String? requestMessage;
  /// Indicates whether the connection has been Approved/Rejected/Removed by the owner of the service.
  final String? status;

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
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : map['privateLinkResourceId'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

