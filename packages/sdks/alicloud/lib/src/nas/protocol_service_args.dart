// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_protocol_service_protocol_service_args_doc}
/// The set of arguments for ProtocolService.
/// {@endtemplate}
/// {@macro pulumi_nas_protocol_service_protocol_service_args_doc}
class ProtocolServiceArgs {
  /// Description of the agreement service.
  ///
  /// Limitations:
  /// - Length is 2~128 English or Chinese characters.
  /// - It must start with an uppercase or lowercase letter or Chinese, and cannot start with `http://` and `https://`.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? dryRun;
  /// The ID of the file system.
  final pulumi.Input<String> fileSystemId;
  /// The specification of the protocol machine cluster.
  /// - Value range: General、CL1、CL2
  /// - Default value: General
  final pulumi.Input<String> protocolSpec;
  /// The throughput of the protocol service. Unit: MB/s.
  final pulumi.Input<int>? protocolThroughput;
  /// The protocol type supported by the protocol service.
  ///
  /// Value range:
  /// - NFS: Protocol Service supports NFS protocol access.
  final pulumi.Input<String> protocolType;
  /// The VpcId of the protocol service, which must be consistent with the VPC of the file system.
  final pulumi.Input<String>? vpcId;
  /// The VSwitchId of the protocol service.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ProtocolServiceArgs].
  /// [description] Description of the agreement service.
  /// [dryRun] Optional.
  /// [fileSystemId] The ID of the file system.
  /// [protocolSpec] The specification of the protocol machine cluster.
  /// [protocolThroughput] The throughput of the protocol service. Unit: MB/s.
  /// [protocolType] The protocol type supported by the protocol service.
  /// [vpcId] The VpcId of the protocol service, which must be consistent with the VPC of the file system.
  /// [vswitchId] The VSwitchId of the protocol service.
  ProtocolServiceArgs({
    this.description,
    this.dryRun,
    required this.fileSystemId,
    required this.protocolSpec,
    this.protocolThroughput,
    required this.protocolType,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'dryRun': ?dryRun,
      'fileSystemId': fileSystemId,
      'protocolSpec': protocolSpec,
      'protocolThroughput': ?protocolThroughput,
      'protocolType': protocolType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ProtocolServiceArgs.fromMap(Map<String, dynamic> map) {
    return ProtocolServiceArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      fileSystemId: (map['fileSystemId'] as String).input(),
      protocolSpec: (map['protocolSpec'] as String).input(),
      protocolThroughput: map['protocolThroughput'] == null ? null : (map['protocolThroughput']! as int).input(),
      protocolType: (map['protocolType'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

