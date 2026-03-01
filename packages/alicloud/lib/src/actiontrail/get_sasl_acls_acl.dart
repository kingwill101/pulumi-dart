// ignore_for_file: unused_element, unnecessary_cast


class GetSaslAclsAcl {
  /// The operation type of the sasl acl.
  final String aclOperationType;
  /// Get results for the specified resource name.
  final String aclResourceName;
  /// The resource pattern type of the sasl acl.
  final String aclResourcePatternType;
  /// Get results for the specified resource type.
  final String aclResourceType;
  /// The host of the sasl acl.
  final String host;
  /// Get results for the specified username.
  final String username;

  /// Creates a new [GetSaslAclsAcl].
  /// [aclOperationType] The operation type of the sasl acl.
  /// [aclResourceName] Get results for the specified resource name.
  /// [aclResourcePatternType] The resource pattern type of the sasl acl.
  /// [aclResourceType] Get results for the specified resource type.
  /// [host] The host of the sasl acl.
  /// [username] Get results for the specified username.
  GetSaslAclsAcl({
    required this.aclOperationType,
    required this.aclResourceName,
    required this.aclResourcePatternType,
    required this.aclResourceType,
    required this.host,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclOperationType': aclOperationType,
      'aclResourceName': aclResourceName,
      'aclResourcePatternType': aclResourcePatternType,
      'aclResourceType': aclResourceType,
      'host': host,
      'username': username,
    };
  }

  factory GetSaslAclsAcl.fromMap(Map<String, dynamic> map) {
    return GetSaslAclsAcl(
      aclOperationType: map['aclOperationType'] as String,
      aclResourceName: map['aclResourceName'] as String,
      aclResourcePatternType: map['aclResourcePatternType'] as String,
      aclResourceType: map['aclResourceType'] as String,
      host: map['host'] as String,
      username: map['username'] as String,
    );
  }
}

