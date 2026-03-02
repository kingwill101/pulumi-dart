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
    this.createTime,
    this.description,
    this.dryRun,
    this.fileSystemId,
    this.protocolServiceId,
    this.protocolSpec,
    this.protocolThroughput,
    this.protocolType,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun']! as bool).input(),
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId']! as String).input(),
      protocolServiceId: map['protocolServiceId'] == null ? null : (map['protocolServiceId']! as String).input(),
      protocolSpec: map['protocolSpec'] == null ? null : (map['protocolSpec']! as String).input(),
      protocolThroughput: map['protocolThroughput'] == null ? null : (map['protocolThroughput']! as int).input(),
      protocolType: map['protocolType'] == null ? null : (map['protocolType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

