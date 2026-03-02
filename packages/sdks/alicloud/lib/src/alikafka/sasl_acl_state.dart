// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SaslAcl resources.
class SaslAclState {
  /// Operation type. Valid values:
  /// - `Write`: write
  /// - `Read`: read
  /// - `Describe`: read TransactionalId
  /// - `IdempotentWrite`: idempotent write to Cluster
  /// - `IDEMPOTENT_WRITE`: idempotent write to Cluster, only available for Serverless instances.
  /// - `DESCRIBE_CONFIGS`: query configuration, only available for Serverless instances.
  final pulumi.Input<String>? aclOperationType;
  /// Batch authorization operation types. Multiple operations are separated by commas (,). Valid values:
  /// - `Write`: write
  /// - `Read`: read
  /// - `Describe`: read TransactionalId
  /// - `IdempotentWrite`: idempotent write to Cluster
  /// - `IDEMPOTENT_WRITE`: idempotent write to Cluster, only available for Serverless instances.
  /// - `DESCRIBE_CONFIGS`: query configuration, only available for Serverless instances.
  /// > **NOTE:**  `acl_operation_types` is only supported for Serverless instances.
  final pulumi.Input<String>? aclOperationTypes;
  /// Authorization method. Value:
  /// - `DENY`: deny.
  /// - `ALLOW`: allow.
  /// > **NOTE:**  `acl_permission_type` is only supported for Serverless instances.
  final pulumi.Input<String>? aclPermissionType;
  /// The resource name.
  /// - The name of the resource, which can be a topic name, Group ID, cluster name, or transaction ID.
  /// - You can use an asterisk (*) to represent all resources of this type.
  final pulumi.Input<String>? aclResourceName;
  /// Match the pattern. Valid values:
  /// - `LITERAL`: exact match
  /// - `PREFIXED`: prefix matching
  final pulumi.Input<String>? aclResourcePatternType;
  /// The resource type. Valid values:
  /// - `Topic`: the message Topic.
  /// - `Group`: consumer Group.
  /// - `Cluster`: the instance.
  /// - `TransactionalId`: transaction ID.
  final pulumi.Input<String>? aclResourceType;
  /// The host of the acl.
  /// > **NOTE:** From version 1.270.0, `host` can be set.
  final pulumi.Input<String>? host;
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// The user name.
  final pulumi.Input<String>? username;

  /// Creates a new [SaslAclState].
  /// [aclOperationType] Operation type. Valid values:
  /// [aclOperationTypes] Batch authorization operation types. Multiple operations are separated by commas (,). Valid values:
  /// [aclPermissionType] Authorization method. Value:
  /// [aclResourceName] The resource name.
  /// [aclResourcePatternType] Match the pattern. Valid values:
  /// [aclResourceType] The resource type. Valid values:
  /// [host] The host of the acl.
  /// [instanceId] The instance ID.
  /// [username] The user name.
  SaslAclState({
    this.aclOperationType,
    this.aclOperationTypes,
    this.aclPermissionType,
    this.aclResourceName,
    this.aclResourcePatternType,
    this.aclResourceType,
    this.host,
    this.instanceId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclOperationType': ?aclOperationType,
      'aclOperationTypes': ?aclOperationTypes,
      'aclPermissionType': ?aclPermissionType,
      'aclResourceName': ?aclResourceName,
      'aclResourcePatternType': ?aclResourcePatternType,
      'aclResourceType': ?aclResourceType,
      'host': ?host,
      'instanceId': ?instanceId,
      'username': ?username,
    };
  }

  factory SaslAclState.fromMap(Map<String, dynamic> map) {
    return SaslAclState(
      aclOperationType: map['aclOperationType'] == null ? null : (map['aclOperationType']! as String).input(),
      aclOperationTypes: map['aclOperationTypes'] == null ? null : (map['aclOperationTypes']! as String).input(),
      aclPermissionType: map['aclPermissionType'] == null ? null : (map['aclPermissionType']! as String).input(),
      aclResourceName: map['aclResourceName'] == null ? null : (map['aclResourceName']! as String).input(),
      aclResourcePatternType: map['aclResourcePatternType'] == null ? null : (map['aclResourcePatternType']! as String).input(),
      aclResourceType: map['aclResourceType'] == null ? null : (map['aclResourceType']! as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

