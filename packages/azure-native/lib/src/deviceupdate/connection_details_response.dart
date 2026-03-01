// ignore_for_file: unused_element, unnecessary_cast


/// Private endpoint connection proxy object properties.
class ConnectionDetailsResponse {
  /// Group ID.
  final String groupId;
  /// Connection details ID.
  final String id;
  /// Link ID.
  final String linkIdentifier;
  /// Member name.
  final String memberName;
  /// Private IP address.
  final String privateIpAddress;

  /// Creates a new [ConnectionDetailsResponse].
  /// [groupId] Group ID.
  /// [id] Connection details ID.
  /// [linkIdentifier] Link ID.
  /// [memberName] Member name.
  /// [privateIpAddress] Private IP address.
  ConnectionDetailsResponse({
    required this.groupId,
    required this.id,
    required this.linkIdentifier,
    required this.memberName,
    required this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'id': id,
      'linkIdentifier': linkIdentifier,
      'memberName': memberName,
      'privateIpAddress': privateIpAddress,
    };
  }

  factory ConnectionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionDetailsResponse(
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      linkIdentifier: map['linkIdentifier'] as String,
      memberName: map['memberName'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
    );
  }
}

