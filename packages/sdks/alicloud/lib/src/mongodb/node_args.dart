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
  /// > **NOTE:** - apsaradb for MongoDB does not support using keywords as accounts.
  /// - The permissions of the account are fixed to read-only permissions.
  /// - When applying for a direct connection address of a Shard node for the first time, you need to set an account and password.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? accountName;
  /// Account password, value description:
  /// - Consists of at least three of uppercase letters, lowercase letters, numbers, and special characters.
  /// - Oh-! @#$%^& *()_+-= is a special character.
  /// - Length is 8~32 characters.
  ///
  /// > **NOTE:**  apsaradb for MongoDB does not support resetting the account and password of the Shard node.
  ///
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? accountPassword;
  /// Whether to pay automatically. Value description:
  final pulumi.Input<bool>? autoPay;
  /// Additional parameters, business information.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
  /// > **NOTE:**  When the node type is `Shard`, you need to configure this parameter.
  final pulumi.Input<int>? nodeStorage;
  /// Node type, value description:
  final pulumi.Input<String> nodeType;
  final pulumi.Input<String>? orderType;
  /// The number of read-only nodes in the Shard.
  ///
  /// Value range: `0` to `5` (integer). Default value: **0 * *.
  ///
  /// > **NOTE:**  This parameter is currently only supported by China Station.
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
  NodeArgs({
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
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword']! as String).input(),
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as bool).input(),
      businessInfo: map['businessInfo'] == null ? null : (map['businessInfo']! as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime']! as String).input(),
      fromApp: map['fromApp'] == null ? null : (map['fromApp']! as String).input(),
      nodeClass: (map['nodeClass'] as String).input(),
      nodeStorage: map['nodeStorage'] == null ? null : (map['nodeStorage']! as int).input(),
      nodeType: (map['nodeType'] as String).input(),
      orderType: map['orderType'] == null ? null : (map['orderType']! as String).input(),
      readonlyReplicas: map['readonlyReplicas'] == null ? null : (map['readonlyReplicas']! as int).input(),
      shardDirect: map['shardDirect'] == null ? null : (map['shardDirect']! as bool).input(),
      switchTime: map['switchTime'] == null ? null : (map['switchTime']! as String).input(),
    );
  }
}

