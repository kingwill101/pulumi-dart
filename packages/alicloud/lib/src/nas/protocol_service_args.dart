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
    String? description,
    bool? dryRun,
    required String fileSystemId,
    required String protocolSpec,
    int? protocolThroughput,
    required String protocolType,
    String? vpcId,
    String? vswitchId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
      protocolSpec = pulumi.Input.asInput<String>(protocolSpec),
      protocolThroughput = pulumi.Input.asOptionalInput<int>(protocolThroughput),
      protocolType = pulumi.Input.asInput<String>(protocolType),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      description: map['description'] == null ? null : map['description'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      fileSystemId: map['fileSystemId'] as String,
      protocolSpec: map['protocolSpec'] as String,
      protocolThroughput: map['protocolThroughput'] == null ? null : map['protocolThroughput'] as int,
      protocolType: map['protocolType'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

