// ignore_for_file: unused_element, unnecessary_cast


/// Private endpoint connection details at member level.
class ConnectionDetails {
  /// Gets or sets group id.
  final String? groupId;
  /// Gets or sets id.
  final String? id;
  /// Gets or sets link identifier.
  final String? linkIdentifier;
  /// Gets or sets member name.
  final String? memberName;
  /// Gets or sets private IP address.
  final String? privateIpAddress;

  /// Creates a new [ConnectionDetails].
  /// [groupId] Gets or sets group id.
  /// [id] Gets or sets id.
  /// [linkIdentifier] Gets or sets link identifier.
  /// [memberName] Gets or sets member name.
  /// [privateIpAddress] Gets or sets private IP address.
  ConnectionDetails({
    this.groupId,
    this.id,
    this.linkIdentifier,
    this.memberName,
    this.privateIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'id': ?id,
      'linkIdentifier': ?linkIdentifier,
      'memberName': ?memberName,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory ConnectionDetails.fromMap(Map<String, dynamic> map) {
    return ConnectionDetails(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      linkIdentifier: map['linkIdentifier'] == null ? null : map['linkIdentifier'] as String,
      memberName: map['memberName'] == null ? null : map['memberName'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
    );
  }
}

