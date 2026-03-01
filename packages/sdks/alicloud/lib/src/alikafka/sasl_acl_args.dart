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
  /// > **NOTE:** From version 1.270.0, `host` can be set.
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
    required pulumi.Output<String> aclOperationType,
    pulumi.Output<String>? aclOperationTypes,
    pulumi.Output<String>? aclPermissionType,
    required pulumi.Output<String> aclResourceName,
    required pulumi.Output<String> aclResourcePatternType,
    required pulumi.Output<String> aclResourceType,
    pulumi.Output<String>? host,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> username,
  }) :
      aclOperationType = pulumi.Input.asInput<String>(aclOperationType),
      aclOperationTypes = pulumi.Input.asOptionalInput<String>(aclOperationTypes),
      aclPermissionType = pulumi.Input.asOptionalInput<String>(aclPermissionType),
      aclResourceName = pulumi.Input.asInput<String>(aclResourceName),
      aclResourcePatternType = pulumi.Input.asInput<String>(aclResourcePatternType),
      aclResourceType = pulumi.Input.asInput<String>(aclResourceType),
      host = pulumi.Input.asOptionalInput<String>(host),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      username = pulumi.Input.asInput<String>(username);

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
      aclOperationType: pulumi.Output.create<String>(map['aclOperationType'] as String),
      aclOperationTypes: map['aclOperationTypes'] == null ? null : pulumi.Output.create<String>(map['aclOperationTypes'] as String),
      aclPermissionType: map['aclPermissionType'] == null ? null : pulumi.Output.create<String>(map['aclPermissionType'] as String),
      aclResourceName: pulumi.Output.create<String>(map['aclResourceName'] as String),
      aclResourcePatternType: pulumi.Output.create<String>(map['aclResourcePatternType'] as String),
      aclResourceType: pulumi.Output.create<String>(map['aclResourceType'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

