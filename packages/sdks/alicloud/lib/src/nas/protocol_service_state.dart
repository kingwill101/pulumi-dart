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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolServiceId: (() {
        final guardedValue = map['protocolServiceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolSpec: (() {
        final guardedValue = map['protocolSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolThroughput: (() {
        final guardedValue = map['protocolThroughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocolType: (() {
        final guardedValue = map['protocolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
