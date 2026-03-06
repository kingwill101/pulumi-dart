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
  /// &gt; **NOTE:**  `acl_operation_types` is only supported for Serverless instances.
  final pulumi.Input<String>? aclOperationTypes;
  /// Authorization method. Value:
  /// - `DENY`: deny.
  /// - `ALLOW`: allow.
  /// &gt; **NOTE:**  `acl_permission_type` is only supported for Serverless instances.
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
  /// &gt; **NOTE:** From version 1.270.0, `host` can be set.
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
  const SaslAclState({
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
      aclOperationType: (() { final guardedValue = map['aclOperationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclOperationTypes: (() { final guardedValue = map['aclOperationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclPermissionType: (() { final guardedValue = map['aclPermissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclResourceName: (() { final guardedValue = map['aclResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclResourcePatternType: (() { final guardedValue = map['aclResourcePatternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aclResourceType: (() { final guardedValue = map['aclResourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

