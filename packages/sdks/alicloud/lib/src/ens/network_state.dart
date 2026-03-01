// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Network resources.
class NetworkState {
  /// The network segment of the network. You can use the following network segments or a subset of them as the network segment: `10.0.0.0/8` (default), `172.16.0.0/12`, `192.168.0.0/16`.
  final pulumi.Input<String>? cidrBlock;
  /// Creation time, timestamp (MS).
  final pulumi.Input<String>? createTime;
  /// Description information.Rules:It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`. Example value: this is my first network.
  final pulumi.Input<String>? description;
  /// Ens node IDExample value: cn-beijing-telecom.
  final pulumi.Input<String>? ensRegionId;
  /// Name of the network instanceThe naming rules are as follows: 1. Length is 2~128 English or Chinese characters; 2. It must start with a large or small letter or Chinese, not with `http://` and `https://`; 3. Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? networkName;
  /// The status of the network instance. Pending: Configuring, Available: Available.
  final pulumi.Input<String>? status;

  /// Creates a new [NetworkState].
  /// [cidrBlock] The network segment of the network. You can use the following network segments or a subset of them as the network segment: `10.0.0.0/8` (default), `172.16.0.0/12`, `192.168.0.0/16`.
  /// [createTime] Creation time, timestamp (MS).
  /// [description] Description information.Rules:It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`. Example value: this is my first network.
  /// [ensRegionId] Ens node IDExample value: cn-beijing-telecom.
  /// [networkName] Name of the network instanceThe naming rules are as follows: 1. Length is 2~128 English or Chinese characters; 2. It must start with a large or small letter or Chinese, not with `http://` and `https://`; 3. Can contain numbers, colons (:), underscores (_), or dashes (-).
  /// [status] The status of the network instance. Pending: Configuring, Available: Available.
  NetworkState({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? ensRegionId,
    pulumi.Output<String>? networkName,
    pulumi.Output<String>? status,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      ensRegionId = pulumi.Input.asOptionalInput<String>(ensRegionId),
      networkName = pulumi.Input.asOptionalInput<String>(networkName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'createTime': ?createTime,
      'description': ?description,
      'ensRegionId': ?ensRegionId,
      'networkName': ?networkName,
      'status': ?status,
    };
  }

  factory NetworkState.fromMap(Map<String, dynamic> map) {
    return NetworkState(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ensRegionId: map['ensRegionId'] == null ? null : pulumi.Output.create<String>(map['ensRegionId'] as String),
      networkName: map['networkName'] == null ? null : pulumi.Output.create<String>(map['networkName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

