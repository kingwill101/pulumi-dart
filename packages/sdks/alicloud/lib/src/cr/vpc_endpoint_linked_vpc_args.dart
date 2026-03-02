// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_vpc_endpoint_linked_vpc_vpc_endpoint_linked_vpc_args_doc}
/// The set of arguments for VpcEndpointLinkedVpc.
/// {@endtemplate}
/// {@macro pulumi_cr_vpc_endpoint_linked_vpc_vpc_endpoint_linked_vpc_args_doc}
class VpcEndpointLinkedVpcArgs {
  /// Specifies whether to automatically create an Alibaba Cloud DNS PrivateZone record. Valid Values:
  final pulumi.Input<bool>? enableCreateDnsRecordInPvzt;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The name of the module that you want to access. Valid Values:
  /// - `Registry`: the image repository.
  /// - `Chart`: a Helm chart.
  final pulumi.Input<String> moduleName;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [VpcEndpointLinkedVpcArgs].
  /// [enableCreateDnsRecordInPvzt] Specifies whether to automatically create an Alibaba Cloud DNS PrivateZone record. Valid Values:
  /// [instanceId] The ID of the instance.
  /// [moduleName] The name of the module that you want to access. Valid Values:
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the vSwitch.
  VpcEndpointLinkedVpcArgs({
    this.enableCreateDnsRecordInPvzt,
    required this.instanceId,
    required this.moduleName,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCreateDnsRecordInPvzt': ?enableCreateDnsRecordInPvzt,
      'instanceId': instanceId,
      'moduleName': moduleName,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory VpcEndpointLinkedVpcArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointLinkedVpcArgs(
      enableCreateDnsRecordInPvzt: map['enableCreateDnsRecordInPvzt'] == null ? null : (map['enableCreateDnsRecordInPvzt']! as bool).input(),
      instanceId: (map['instanceId'] as String).input(),
      moduleName: (map['moduleName'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

