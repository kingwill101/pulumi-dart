// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointLinkedVpc resources.
class VpcEndpointLinkedVpcState {
  /// Specifies whether to automatically create an Alibaba Cloud DNS PrivateZone record. Valid Values:
  final pulumi.Input<bool>? enableCreateDnsRecordInPvzt;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The name of the module that you want to access. Valid Values:
  /// - `Registry`: the image repository.
  /// - `Chart`: a Helm chart.
  final pulumi.Input<String>? moduleName;
  /// The status of the Vpc Endpoint Linked Vpc.
  final pulumi.Input<String>? status;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [VpcEndpointLinkedVpcState].
  /// [enableCreateDnsRecordInPvzt] Specifies whether to automatically create an Alibaba Cloud DNS PrivateZone record. Valid Values:
  /// [instanceId] The ID of the instance.
  /// [moduleName] The name of the module that you want to access. Valid Values:
  /// [status] The status of the Vpc Endpoint Linked Vpc.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the vSwitch.
  VpcEndpointLinkedVpcState({
    this.enableCreateDnsRecordInPvzt,
    this.instanceId,
    this.moduleName,
    this.status,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCreateDnsRecordInPvzt': ?enableCreateDnsRecordInPvzt,
      'instanceId': ?instanceId,
      'moduleName': ?moduleName,
      'status': ?status,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory VpcEndpointLinkedVpcState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointLinkedVpcState(
      enableCreateDnsRecordInPvzt: map['enableCreateDnsRecordInPvzt'] == null ? null : (map['enableCreateDnsRecordInPvzt']! as bool).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      moduleName: map['moduleName'] == null ? null : (map['moduleName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

