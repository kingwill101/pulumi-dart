// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_connect_endpoint_timeouts/instance_connect_endpoint_timeouts.dart';

/// The set of arguments for InstanceConnectEndpoint.
class InstanceConnectEndpointArgs {
  /// IP address type of the endpoint. Valid values are `ipv4`, `ipv6`, and `dualstack`. The default value is determined by the IP address type of the subnet. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateInstanceConnectEndpoint.html) for more details.
  final Input<String>? ipAddressType;

  /// Indicates whether your client's IP address is preserved as the source. Default: `true`.
  final Input<bool>? preserveClientIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// One or more security groups to associate with the endpoint. If you don't specify a security group, the default security group for the VPC will be associated with the endpoint.
  final Input<List<String>>? securityGroupIds;

  /// The ID of the subnet in which to create the EC2 Instance Connect Endpoint.
  final Input<String> subnetId;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<InstanceConnectEndpointTimeouts>? timeouts;

  InstanceConnectEndpointArgs({
    this.ipAddressType,
    this.preserveClientIp,
    this.region,
    this.securityGroupIds,
    required this.subnetId,
    this.tags,
    this.timeouts,
  });

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
      map['timeouts'] = Input.mapOptionalInputValue<
          InstanceConnectEndpointTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceConnectEndpointArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConnectEndpointArgs(
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      preserveClientIp: Input.asOptionalInput<bool>(map['preserveClientIp']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      subnetId: Input.asInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<InstanceConnectEndpointTimeouts>(
          map['timeouts']),
    );
  }
}
