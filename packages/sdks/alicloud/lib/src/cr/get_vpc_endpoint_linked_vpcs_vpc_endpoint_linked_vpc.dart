// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcEndpointLinkedVpcsVpcEndpointLinkedVpc {
  /// Indicates whether the default policy is used to access the instance.
  final pulumi.Input<bool> defaultAccess;
  /// The ID of the Vpc Endpoint Linked Vpc. It formats as `&lt;instance_id&gt;:&lt;vpc_id&gt;:&lt;vswitch_id&gt;:&lt;module_name&gt;`.
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
  /// [id] The ID of the Vpc Endpoint Linked Vpc. It formats as `&lt;instance_id&gt;:&lt;vpc_id&gt;:&lt;vswitch_id&gt;:&lt;module_name&gt;`.
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
      defaultAccess: pulumi.Input.fromValue(map['defaultAccess'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
      moduleName: pulumi.Input.fromValue(map['moduleName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}

