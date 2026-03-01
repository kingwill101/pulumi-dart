// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a managed private endpoint
class ManagedPrivateEndpoint {
  /// Fully qualified domain names
  final List<String>? fqdns;
  /// The groupId to which the managed private endpoint is created
  final String? groupId;
  /// The ARM resource ID of the resource to which the managed private endpoint is created
  final String? privateLinkResourceId;

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
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : map['privateLinkResourceId'] as String,
    );
  }
}

