// ignore_for_file: unused_element, unnecessary_cast


/// The information of AAD security group.
class ClientGroupInfoResponse {
  /// The AAD security group id.
  final String? groupId;
  /// The AAD security group name.
  final String? groupName;

  /// Creates a new [ClientGroupInfoResponse].
  /// [groupId] The AAD security group id.
  /// [groupName] The AAD security group name.
  ClientGroupInfoResponse({
    this.groupId,
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': ?groupId,
      'groupName': ?groupName,
    };
  }

  factory ClientGroupInfoResponse.fromMap(Map<String, dynamic> map) {
    return ClientGroupInfoResponse(
      groupId: map['groupId'] == null ? null : map['groupId'] as String,
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
    );
  }
}

