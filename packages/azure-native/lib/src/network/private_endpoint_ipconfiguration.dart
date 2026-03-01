// ignore_for_file: unused_element, unnecessary_cast


/// An IP Configuration of the private endpoint.
class PrivateEndpointIPConfiguration {
  /// The ID of a group obtained from the remote resource that this private endpoint should connect to.
  final String? groupId;
  /// The member name of a group obtained from the remote resource that this private endpoint should connect to.
  final String? memberName;
  /// The name of the resource that is unique within a resource group.
  final String? name;
  /// A private ip address obtained from the private endpoint's subnet.
  final String? privateIPAddress;

  /// Creates a new [PrivateEndpointIPConfiguration].
  /// [groupId] The ID of a group obtained from the remote resource that this private endpoint should connect to.
  /// [memberName] The member name of a group obtained from the remote resource that this private endpoint should connect to.
  /// [name] The name of the resource that is unique within a resource group.
  /// [privateIPAddress] A private ip address obtained from the private endpoint's subnet.
  PrivateEndpointIPConfiguration({
    this.groupId,
    this.memberName,
    this.name,
    this.privateIPAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'memberName': ?memberName,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
    };
  }

  factory PrivateEndpointIPConfiguration.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointIPConfiguration(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      memberName: map['memberName'] == null ? null : map['memberName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
    );
  }
}

