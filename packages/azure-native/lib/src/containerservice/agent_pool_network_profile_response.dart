// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptag_response.dart';
import 'port_range_response.dart';

/// Network settings of an agent pool.
class AgentPoolNetworkProfileResponse {
  /// The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  final List<PortRangeResponse>? allowedHostPorts;
  /// The IDs of the application security groups which agent pool will associate when created.
  final List<String>? applicationSecurityGroups;
  /// IPTags of instance-level public IPs.
  final List<IPTagResponse>? nodePublicIPTags;

  /// Creates a new [AgentPoolNetworkProfileResponse].
  /// [allowedHostPorts] The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  /// [applicationSecurityGroups] The IDs of the application security groups which agent pool will associate when created.
  /// [nodePublicIPTags] IPTags of instance-level public IPs.
  AgentPoolNetworkProfileResponse({
    this.allowedHostPorts,
    this.applicationSecurityGroups,
    this.nodePublicIPTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHostPorts': ?allowedHostPorts == null ? null : pulumi.Input.encodeList<PortRangeResponse, Map<String, dynamic>>(allowedHostPorts!, (value) => value.toMap()),
      'applicationSecurityGroups': ?applicationSecurityGroups,
      'nodePublicIPTags': ?nodePublicIPTags == null ? null : pulumi.Input.encodeList<IPTagResponse, Map<String, dynamic>>(nodePublicIPTags!, (value) => value.toMap()),
    };
  }

  factory AgentPoolNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return AgentPoolNetworkProfileResponse(
      allowedHostPorts: map['allowedHostPorts'] == null ? null : pulumi.Input.decodeList<PortRangeResponse>(map['allowedHostPorts'], (value) => PortRangeResponse.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : (map['applicationSecurityGroups'] as List).cast<String>(),
      nodePublicIPTags: map['nodePublicIPTags'] == null ? null : pulumi.Input.decodeList<IPTagResponse>(map['nodePublicIPTags'], (value) => IPTagResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

