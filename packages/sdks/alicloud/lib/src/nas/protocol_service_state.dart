// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProtocolService resources.
class ProtocolServiceState {
  /// The time when the protocol server service was created. The UTC time.
  final pulumi.Input<String>? createTime;
  /// Description of the agreement service.
  ///
  /// Limitations:
  /// - Length is 2~128 English or Chinese characters.
  /// - It must start with an uppercase or lowercase letter or Chinese, and cannot start with `http://` and `https://`.
  /// - Can contain numbers, colons (:), underscores (_), or dashes (-).
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? dryRun;
  /// The ID of the file system.
  final pulumi.Input<String>? fileSystemId;
  /// Protocol Service ID
  final pulumi.Input<String>? protocolServiceId;
  /// The specification of the protocol machine cluster.
  /// - Value range: General、CL1、CL2
  /// - Default value: General
  final pulumi.Input<String>? protocolSpec;
  /// The throughput of the protocol service. Unit: MB/s.
  final pulumi.Input<int>? protocolThroughput;
  /// The protocol type supported by the protocol service.
  ///
  /// Value range:
  /// - NFS: Protocol Service supports NFS protocol access.
  final pulumi.Input<String>? protocolType;
  /// Agreement service status.
  final pulumi.Input<String>? status;
  /// The VpcId of the protocol service, which must be consistent with the VPC of the file system.
  final pulumi.Input<String>? vpcId;
  /// The VSwitchId of the protocol service.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ProtocolServiceState].
  /// [createTime] The time when the protocol server service was created. The UTC time.
  /// [description] Description of the agreement service.
  /// [dryRun] Optional.
  /// [fileSystemId] The ID of the file system.
  /// [protocolServiceId] Protocol Service ID
  /// [protocolSpec] The specification of the protocol machine cluster.
  /// [protocolThroughput] The throughput of the protocol service. Unit: MB/s.
  /// [protocolType] The protocol type supported by the protocol service.
  /// [status] Agreement service status.
  /// [vpcId] The VpcId of the protocol service, which must be consistent with the VPC of the file system.
  /// [vswitchId] The VSwitchId of the protocol service.
  ProtocolServiceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? protocolServiceId,
    pulumi.Output<String>? protocolSpec,
    pulumi.Output<int>? protocolThroughput,
    pulumi.Output<String>? protocolType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      protocolServiceId = pulumi.Input.asOptionalInput<String>(protocolServiceId),
      protocolSpec = pulumi.Input.asOptionalInput<String>(protocolSpec),
      protocolThroughput = pulumi.Input.asOptionalInput<int>(protocolThroughput),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'dryRun': ?dryRun,
      'fileSystemId': ?fileSystemId,
      'protocolServiceId': ?protocolServiceId,
      'protocolSpec': ?protocolSpec,
      'protocolThroughput': ?protocolThroughput,
      'protocolType': ?protocolType,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ProtocolServiceState.fromMap(Map<String, dynamic> map) {
    return ProtocolServiceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      protocolServiceId: map['protocolServiceId'] == null ? null : pulumi.Output.create<String>(map['protocolServiceId'] as String),
      protocolSpec: map['protocolSpec'] == null ? null : pulumi.Output.create<String>(map['protocolSpec'] as String),
      protocolThroughput: map['protocolThroughput'] == null ? null : pulumi.Output.create<int>(map['protocolThroughput'] as int),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

