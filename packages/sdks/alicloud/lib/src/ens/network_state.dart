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
  const NetworkState({
    this.cidrBlock,
    this.createTime,
    this.description,
    this.ensRegionId,
    this.networkName,
    this.status,
  });

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
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ensRegionId: (() { final guardedValue = map['ensRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkName: (() { final guardedValue = map['networkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

