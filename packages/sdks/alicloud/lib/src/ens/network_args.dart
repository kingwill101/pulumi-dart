// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_network_network_args_doc}
/// The set of arguments for Network.
/// {@endtemplate}
/// {@macro pulumi_ens_network_network_args_doc}
class NetworkArgs {
  /// The network segment of the network. You can use the following network segments or a subset of them as the network segment: `10.0.0.0/8` (default), `172.16.0.0/12`, `192.168.0.0/16`.
  final pulumi.Input<String> cidrBlock;
  /// Description information.Rules:It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`. Example value: this is my first network.
  final pulumi.Input<String>? description;
  /// Ens node IDExample value: cn-beijing-telecom.
  final pulumi.Input<String> ensRegionId;
  /// Name of the network instanceThe naming rules are as follows: 1. Length is 2~128 English or Chinese characters; 2. It must start with a large or small letter or Chinese, not with `http://` and `https://`; 3. Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? networkName;

  /// Creates a new [NetworkArgs].
  /// [cidrBlock] The network segment of the network. You can use the following network segments or a subset of them as the network segment: `10.0.0.0/8` (default), `172.16.0.0/12`, `192.168.0.0/16`.
  /// [description] Description information.Rules:It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`. Example value: this is my first network.
  /// [ensRegionId] Ens node IDExample value: cn-beijing-telecom.
  /// [networkName] Name of the network instanceThe naming rules are as follows: 1. Length is 2~128 English or Chinese characters; 2. It must start with a large or small letter or Chinese, not with `http://` and `https://`; 3. Can contain numbers, colons (:), underscores (_), or dashes (-).
  NetworkArgs({
    required this.cidrBlock,
    this.description,
    required this.ensRegionId,
    this.networkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'description': ?description,
      'ensRegionId': ensRegionId,
      'networkName': ?networkName,
    };
  }

  factory NetworkArgs.fromMap(Map<String, dynamic> map) {
    return NetworkArgs(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ensRegionId: pulumi.Input.fromValue(map['ensRegionId'] as String),
      networkName: (() { final guardedValue = map['networkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

