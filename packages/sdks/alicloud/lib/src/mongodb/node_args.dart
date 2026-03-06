// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mongodb_node_node_args_doc}
/// The set of arguments for Node.
/// {@endtemplate}
/// {@macro pulumi_mongodb_node_node_args_doc}
class NodeArgs {
  /// Account name, value description:
  /// - Begins with a lowercase letter.
  /// - Consists of lowercase letters, numbers, or underscores (_).
  /// - 4~16 characters in length.
  ///
  /// &gt; **NOTE:** - apsaradb for MongoDB does not support using keywords as accounts.
  /// - The permissions of the account are fixed to read-only permissions.
  /// - When applying for a direct connection address of a Shard node for the first time, you need to set an account and password.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? accountName;
  /// Account password, value description:
  /// - Consists of at least three of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Oh-! @#$%^& *()_+-= is a special character.
  /// - Length is 8~32 characters.
  ///
  /// &gt; **NOTE:**  apsaradb for MongoDB does not support resetting the account and password of the Shard node.
  ///
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? accountPassword;
  /// Whether to pay automatically. Value description:
  final pulumi.Input<bool>? autoPay;
  /// Additional parameters, business information.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? businessInfo;
  /// The ID of the sharded cluster instance.
  final pulumi.Input<String> dbInstanceId;
  final pulumi.Input<String>? effectiveTime;
  /// Request Source, value description:
  /// - `OpenApi`: The request source is OpenApi.
  final pulumi.Input<String>? fromApp;
  /// The specifications of the Shard node or Mongos node. For more information, see Instance Specifications.
  final pulumi.Input<String> nodeClass;
  /// The disk space of the Node. Unit: GB.
  ///
  /// Value range: `10` to `2000`, with a step size of 10GB.
  ///
  /// &gt; **NOTE:**  When the node type is `Shard`, you need to configure this parameter.
  final pulumi.Input<int>? nodeStorage;
  /// Node type, value description:
  final pulumi.Input<String> nodeType;
  final pulumi.Input<String>? orderType;
  /// The number of read-only nodes in the Shard.
  ///
  /// Value range: `0` to `5` (integer). Default value: **0 * *.
  ///
  /// &gt; **NOTE:**  This parameter is currently only supported by China Station.
  final pulumi.Input<int>? readonlyReplicas;
  /// Whether to apply for the direct connection address of the Shard node. Value description:
  final pulumi.Input<bool>? shardDirect;
  final pulumi.Input<String>? switchTime;

  /// Creates a new [NodeArgs].
  /// [accountName] Account name, value description:
  /// [accountPassword] Account password, value description:
  /// [autoPay] Whether to pay automatically. Value description:
  /// [businessInfo] Additional parameters, business information.
  /// [dbInstanceId] The ID of the sharded cluster instance.
  /// [effectiveTime] Optional.
  /// [fromApp] Request Source, value description:
  /// [nodeClass] The specifications of the Shard node or Mongos node. For more information, see Instance Specifications.
  /// [nodeStorage] The disk space of the Node. Unit: GB.
  /// [nodeType] Node type, value description:
  /// [orderType] Optional.
  /// [readonlyReplicas] The number of read-only nodes in the Shard.
  /// [shardDirect] Whether to apply for the direct connection address of the Shard node. Value description:
  /// [switchTime] Optional.
  const NodeArgs({
    this.accountName,
    this.accountPassword,
    this.autoPay,
    this.businessInfo,
    required this.dbInstanceId,
    this.effectiveTime,
    this.fromApp,
    required this.nodeClass,
    this.nodeStorage,
    required this.nodeType,
    this.orderType,
    this.readonlyReplicas,
    this.shardDirect,
    this.switchTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'autoPay': ?autoPay,
      'businessInfo': ?businessInfo,
      'dbInstanceId': dbInstanceId,
      'effectiveTime': ?effectiveTime,
      'fromApp': ?fromApp,
      'nodeClass': nodeClass,
      'nodeStorage': ?nodeStorage,
      'nodeType': nodeType,
      'orderType': ?orderType,
      'readonlyReplicas': ?readonlyReplicas,
      'shardDirect': ?shardDirect,
      'switchTime': ?switchTime,
    };
  }

  factory NodeArgs.fromMap(Map<String, dynamic> map) {
    return NodeArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountPassword: (() { final guardedValue = map['accountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      businessInfo: (() { final guardedValue = map['businessInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromApp: (() { final guardedValue = map['fromApp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeClass: pulumi.Input.fromValue(map['nodeClass'] as String),
      nodeStorage: (() { final guardedValue = map['nodeStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      orderType: (() { final guardedValue = map['orderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readonlyReplicas: (() { final guardedValue = map['readonlyReplicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shardDirect: (() { final guardedValue = map['shardDirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      switchTime: (() { final guardedValue = map['switchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

