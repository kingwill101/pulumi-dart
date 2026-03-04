// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alikafka_sasl_acl_sasl_acl_args_doc}
/// The set of arguments for SaslAcl.
/// {@endtemplate}
/// {@macro pulumi_alikafka_sasl_acl_sasl_acl_args_doc}
class SaslAclArgs {
  /// Operation type. Valid values:
  /// - `Write`: write
  /// - `Read`: read
  /// - `Describe`: read TransactionalId
  /// - `IdempotentWrite`: idempotent write to Cluster
  /// - `IDEMPOTENT_WRITE`: idempotent write to Cluster, only available for Serverless instances.
  /// - `DESCRIBE_CONFIGS`: query configuration, only available for Serverless instances.
  final pulumi.Input<String> aclOperationType;

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
  final pulumi.Input<String> aclResourceName;

  /// Match the pattern. Valid values:
  /// - `LITERAL`: exact match
  /// - `PREFIXED`: prefix matching
  final pulumi.Input<String> aclResourcePatternType;

  /// The resource type. Valid values:
  /// - `Topic`: the message Topic.
  /// - `Group`: consumer Group.
  /// - `Cluster`: the instance.
  /// - `TransactionalId`: transaction ID.
  final pulumi.Input<String> aclResourceType;

  /// The host of the acl.
  /// &gt; **NOTE:** From version 1.270.0, `host` can be set.
  final pulumi.Input<String>? host;

  /// The instance ID.
  final pulumi.Input<String> instanceId;

  /// The user name.
  final pulumi.Input<String> username;

  /// Creates a new [SaslAclArgs].
  /// [aclOperationType] Operation type. Valid values:
  /// [aclOperationTypes] Batch authorization operation types. Multiple operations are separated by commas (,). Valid values:
  /// [aclPermissionType] Authorization method. Value:
  /// [aclResourceName] The resource name.
  /// [aclResourcePatternType] Match the pattern. Valid values:
  /// [aclResourceType] The resource type. Valid values:
  /// [host] The host of the acl.
  /// [instanceId] The instance ID.
  /// [username] The user name.
  SaslAclArgs({
    required this.aclOperationType,
    this.aclOperationTypes,
    this.aclPermissionType,
    required this.aclResourceName,
    required this.aclResourcePatternType,
    required this.aclResourceType,
    this.host,
    required this.instanceId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclOperationType': aclOperationType,
      'aclOperationTypes': ?aclOperationTypes,
      'aclPermissionType': ?aclPermissionType,
      'aclResourceName': aclResourceName,
      'aclResourcePatternType': aclResourcePatternType,
      'aclResourceType': aclResourceType,
      'host': ?host,
      'instanceId': instanceId,
      'username': username,
    };
  }

  factory SaslAclArgs.fromMap(Map<String, dynamic> map) {
    return SaslAclArgs(
      aclOperationType: pulumi.Input.fromValue(
        map['aclOperationType'] as String,
      ),
      aclOperationTypes: (() {
        final guardedValue = map['aclOperationTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      aclPermissionType: (() {
        final guardedValue = map['aclPermissionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      aclResourceName: pulumi.Input.fromValue(map['aclResourceName'] as String),
      aclResourcePatternType: pulumi.Input.fromValue(
        map['aclResourcePatternType'] as String,
      ),
      aclResourceType: pulumi.Input.fromValue(map['aclResourceType'] as String),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
