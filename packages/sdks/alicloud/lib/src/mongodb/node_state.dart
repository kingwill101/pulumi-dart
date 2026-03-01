// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Node resources.
class NodeState {
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
  final pulumi.Input<String>? dbInstanceId;
  final pulumi.Input<String>? effectiveTime;
  /// Request Source, value description:
  /// - `OpenApi`: The request source is OpenApi.
  final pulumi.Input<String>? fromApp;
  /// The specifications of the Shard node or Mongos node. For more information, see Instance Specifications.
  final pulumi.Input<String>? nodeClass;
  /// The first ID of the resource
  final pulumi.Input<String>? nodeId;
  /// The disk space of the Node. Unit: GB.
  ///
  /// Value range: `10` to `2000`, with a step size of 10GB.
  ///
  /// > **NOTE:**  When the node type is `Shard`, you need to configure this parameter.
  final pulumi.Input<int>? nodeStorage;
  /// Node type, value description:
  final pulumi.Input<String>? nodeType;
  final pulumi.Input<String>? orderType;
  /// The number of read-only nodes in the Shard.
  ///
  /// Value range: `0` to `5` (integer). Default value: **0 * *.
  ///
  /// > **NOTE:**  This parameter is currently only supported by China Station.
  final pulumi.Input<int>? readonlyReplicas;
  /// Whether to apply for the direct connection address of the Shard node. Value description:
  final pulumi.Input<bool>? shardDirect;
  /// Running status of node in sharded cluster
  final pulumi.Input<String>? status;
  final pulumi.Input<String>? switchTime;

  /// Creates a new [NodeState].
  /// [accountName] Account name, value description:
  /// [accountPassword] Account password, value description:
  /// [autoPay] Whether to pay automatically. Value description:
  /// [businessInfo] Additional parameters, business information.
  /// [dbInstanceId] The ID of the sharded cluster instance.
  /// [effectiveTime] Optional.
  /// [fromApp] Request Source, value description:
  /// [nodeClass] The specifications of the Shard node or Mongos node. For more information, see Instance Specifications.
  /// [nodeId] The first ID of the resource
  /// [nodeStorage] The disk space of the Node. Unit: GB.
  /// [nodeType] Node type, value description:
  /// [orderType] Optional.
  /// [readonlyReplicas] The number of read-only nodes in the Shard.
  /// [shardDirect] Whether to apply for the direct connection address of the Shard node. Value description:
  /// [status] Running status of node in sharded cluster
  /// [switchTime] Optional.
  NodeState({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? accountPassword,
    pulumi.Output<bool>? autoPay,
    pulumi.Output<String>? businessInfo,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? fromApp,
    pulumi.Output<String>? nodeClass,
    pulumi.Output<String>? nodeId,
    pulumi.Output<int>? nodeStorage,
    pulumi.Output<String>? nodeType,
    pulumi.Output<String>? orderType,
    pulumi.Output<int>? readonlyReplicas,
    pulumi.Output<bool>? shardDirect,
    pulumi.Output<String>? status,
    pulumi.Output<String>? switchTime,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      businessInfo = pulumi.Input.asOptionalInput<String>(businessInfo),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      fromApp = pulumi.Input.asOptionalInput<String>(fromApp),
      nodeClass = pulumi.Input.asOptionalInput<String>(nodeClass),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      nodeStorage = pulumi.Input.asOptionalInput<int>(nodeStorage),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      orderType = pulumi.Input.asOptionalInput<String>(orderType),
      readonlyReplicas = pulumi.Input.asOptionalInput<int>(readonlyReplicas),
      shardDirect = pulumi.Input.asOptionalInput<bool>(shardDirect),
      status = pulumi.Input.asOptionalInput<String>(status),
      switchTime = pulumi.Input.asOptionalInput<String>(switchTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'accountPassword': ?accountPassword,
      'autoPay': ?autoPay,
      'businessInfo': ?businessInfo,
      'dbInstanceId': ?dbInstanceId,
      'effectiveTime': ?effectiveTime,
      'fromApp': ?fromApp,
      'nodeClass': ?nodeClass,
      'nodeId': ?nodeId,
      'nodeStorage': ?nodeStorage,
      'nodeType': ?nodeType,
      'orderType': ?orderType,
      'readonlyReplicas': ?readonlyReplicas,
      'shardDirect': ?shardDirect,
      'status': ?status,
      'switchTime': ?switchTime,
    };
  }

  factory NodeState.fromMap(Map<String, dynamic> map) {
    return NodeState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      businessInfo: map['businessInfo'] == null ? null : pulumi.Output.create<String>(map['businessInfo'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      fromApp: map['fromApp'] == null ? null : pulumi.Output.create<String>(map['fromApp'] as String),
      nodeClass: map['nodeClass'] == null ? null : pulumi.Output.create<String>(map['nodeClass'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      nodeStorage: map['nodeStorage'] == null ? null : pulumi.Output.create<int>(map['nodeStorage'] as int),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      orderType: map['orderType'] == null ? null : pulumi.Output.create<String>(map['orderType'] as String),
      readonlyReplicas: map['readonlyReplicas'] == null ? null : pulumi.Output.create<int>(map['readonlyReplicas'] as int),
      shardDirect: map['shardDirect'] == null ? null : pulumi.Output.create<bool>(map['shardDirect'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      switchTime: map['switchTime'] == null ? null : pulumi.Output.create<String>(map['switchTime'] as String),
    );
  }
}

