// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_connect_endpoint_timeouts.dart';

/// {@template pulumi_ec2transitgateway_instance_connect_endpoint_instance_connect_endpoint_args_doc}
/// The set of arguments for InstanceConnectEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_instance_connect_endpoint_instance_connect_endpoint_args_doc}
class InstanceConnectEndpointArgs {
  /// IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  final pulumi.Input<String?>? ipAddressType;
  /// Indicates whether your client's IP address is preserved as the source. Default: `true`.
  final pulumi.Input<bool?>? preserveClientIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  final pulumi.Input<String> subnetId;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<InstanceConnectEndpointTimeouts?>? timeouts;

  /// Creates a new [InstanceConnectEndpointArgs].
  /// [ipAddressType] IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  /// [preserveClientIp] Indicates whether your client's IP address is preserved as the source. Default: `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  /// [subnetId] The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const InstanceConnectEndpointArgs({
    this.ipAddressType,
    this.preserveClientIp,
    this.region,
    this.securityGroupIds,
    required this.subnetId,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'preserveClientIp': ?preserveClientIp,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'subnetId': subnetId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<InstanceConnectEndpointTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory InstanceConnectEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConnectEndpointArgs(
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preserveClientIp: (() { final guardedValue = map['preserveClientIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceConnectEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
