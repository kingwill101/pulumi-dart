// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc {
  /// Indicates whether the default policy is used to access the instance.
  final pulumi.Input<bool> defaultAccess;
  /// The ID of the Vpc Endpoint Linked Vpc. It formats as `<instance_id>:<vpc_id>:<vswitch_id>:<module_name>`.
  final pulumi.Input<String> id;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// IP address.
  final pulumi.Input<String> ip;
  /// The name of the module that you want to access. Valid Values:
  /// - `Registry`: the image repository.
  /// - `Chart`: a Helm chart.
  final pulumi.Input<String> moduleName;
  /// The status of the Vpc Endpoint Linked Vpc. Valid Values: `CREATING`, `RUNNING`.
  final pulumi.Input<String> status;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc].
  /// [defaultAccess] Indicates whether the default policy is used to access the instance.
  /// [id] The ID of the Vpc Endpoint Linked Vpc. It formats as `<instance_id>:<vpc_id>:<vswitch_id>:<module_name>`.
  /// [instanceId] The ID of the instance.
  /// [ip] IP address.
  /// [moduleName] The name of the module that you want to access. Valid Values:
  /// [status] The status of the Vpc Endpoint Linked Vpc. Valid Values: `CREATING`, `RUNNING`.
  /// [vpcId] The ID of the VPC.
  /// [vswitchId] The ID of the vSwitch.
  GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc({
    required this.defaultAccess,
    required this.id,
    required this.instanceId,
    required this.ip,
    required this.moduleName,
    required this.status,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAccess': defaultAccess,
      'id': id,
      'instanceId': instanceId,
      'ip': ip,
      'moduleName': moduleName,
      'status': status,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc(
      defaultAccess: (map['defaultAccess'] as bool).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      ip: (map['ip'] as String).input(),
      moduleName: (map['moduleName'] as String).input(),
      status: (map['status'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

