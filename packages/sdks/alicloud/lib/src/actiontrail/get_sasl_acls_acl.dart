// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSaslAclsAcl {
  /// The operation type of the sasl acl.
  final pulumi.Input<String> aclOperationType;

  /// Get results for the specified resource name.
  final pulumi.Input<String> aclResourceName;

  /// The resource pattern type of the sasl acl.
  final pulumi.Input<String> aclResourcePatternType;

  /// Get results for the specified resource type.
  final pulumi.Input<String> aclResourceType;

  /// The host of the sasl acl.
  final pulumi.Input<String> host;

  /// Get results for the specified username.
  final pulumi.Input<String> username;

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
      aclOperationType: pulumi.Input.fromValue(
        map['aclOperationType'] as String,
      ),
      aclResourceName: pulumi.Input.fromValue(map['aclResourceName'] as String),
      aclResourcePatternType: pulumi.Input.fromValue(
        map['aclResourcePatternType'] as String,
      ),
      aclResourceType: pulumi.Input.fromValue(map['aclResourceType'] as String),
      host: pulumi.Input.fromValue(map['host'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
