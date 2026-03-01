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
    pulumi.Output<bool>? enableCreateDnsRecordInPvzt,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? moduleName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      enableCreateDnsRecordInPvzt = pulumi.Input.asOptionalInput<bool>(enableCreateDnsRecordInPvzt),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      moduleName = pulumi.Input.asOptionalInput<String>(moduleName),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      enableCreateDnsRecordInPvzt: map['enableCreateDnsRecordInPvzt'] == null ? null : pulumi.Output.create<bool>(map['enableCreateDnsRecordInPvzt'] as bool),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      moduleName: map['moduleName'] == null ? null : pulumi.Output.create<String>(map['moduleName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

