// ignore_for_file: unused_element, unnecessary_cast


/// Describes a user that the hunt is assigned to
class HuntOwnerResponse {
  /// The name of the user the hunt is assigned to.
  final String? assignedTo;
  /// The email of the user the hunt is assigned to.
  final String? email;
  /// The object id of the user the hunt is assigned to.
  final String? objectId;
  /// The type of the owner the hunt is assigned to.
  final String? ownerType;
  /// The user principal name of the user the hunt is assigned to.
  final String? userPrincipalName;

  /// Creates a new [HuntOwnerResponse].
  /// [assignedTo] The name of the user the hunt is assigned to.
  /// [email] The email of the user the hunt is assigned to.
  /// [objectId] The object id of the user the hunt is assigned to.
  /// [ownerType] The type of the owner the hunt is assigned to.
  /// [userPrincipalName] The user principal name of the user the hunt is assigned to.
  HuntOwnerResponse({
    this.assignedTo,
    this.email,
    this.objectId,
    this.ownerType,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedTo': ?assignedTo,
      'email': ?email,
      'objectId': ?objectId,
      'ownerType': ?ownerType,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory HuntOwnerResponse.fromMap(Map<String, dynamic> map) {
    return HuntOwnerResponse(
      assignedTo: map['assignedTo'] == null ? null : map['assignedTo'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
      ownerType: map['ownerType'] == null ? null : map['ownerType'] as String,
      userPrincipalName: map['userPrincipalName'] == null ? null : map['userPrincipalName'] as String,
    );
  }
}

