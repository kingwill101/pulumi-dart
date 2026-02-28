// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_connect_endpoint_timeouts.dart';

/// {@template pulumi_ec2transitgateway_instance_connect_endpoint_instance_connect_endpoint_args_doc}
/// The set of arguments for InstanceConnectEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_instance_connect_endpoint_instance_connect_endpoint_args_doc}
class InstanceConnectEndpointArgs {
  /// IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  final pulumi.Input<String>? ipAddressType;

  /// Indicates whether your client's IP address is preserved as the source. Default: `true`.
  final pulumi.Input<bool>? preserveClientIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  final pulumi.Input<String> subnetId;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<InstanceConnectEndpointTimeouts>? timeouts;

  /// Creates a new [InstanceConnectEndpointArgs].
  /// [ipAddressType] IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  /// [preserveClientIp] Indicates whether your client's IP address is preserved as the source. Default: `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  /// [subnetId] The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  InstanceConnectEndpointArgs({
    String? ipAddressType,
    bool? preserveClientIp,
    String? region,
    List<String>? securityGroupIds,
    required String subnetId,
    Map<String, String>? tags,
    InstanceConnectEndpointTimeouts? timeouts,
  })  : ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
        preserveClientIp = pulumi.Input.asOptionalInput<bool>(preserveClientIp),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        subnetId = pulumi.Input.asInput<String>(subnetId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts =
            pulumi.Input.asOptionalInput<InstanceConnectEndpointTimeouts>(
                timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final preserveClientIpValue = preserveClientIp;
    if (preserveClientIpValue != null) {
      map['preserveClientIp'] = preserveClientIpValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetId'] = subnetId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          InstanceConnectEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceConnectEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConnectEndpointArgs(
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      preserveClientIp: map['preserveClientIp'] == null
          ? null
          : map['preserveClientIp'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : InstanceConnectEndpointTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
