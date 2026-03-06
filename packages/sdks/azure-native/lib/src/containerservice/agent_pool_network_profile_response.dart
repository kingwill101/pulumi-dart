// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptag_response.dart';
import 'port_range_response.dart';

/// Network settings of an agent pool.
class AgentPoolNetworkProfileResponse {
  /// The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  final pulumi.Input<List<PortRangeResponse>>? allowedHostPorts;
  /// The IDs of the application security groups which agent pool will associate when created.
  final pulumi.Input<List<String>>? applicationSecurityGroups;
  /// IPTags of instance-level public IPs.
  final pulumi.Input<List<IPTagResponse>>? nodePublicIPTags;

  /// Creates a new [AgentPoolNetworkProfileResponse].
  /// [allowedHostPorts] The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  /// [applicationSecurityGroups] The IDs of the application security groups which agent pool will associate when created.
  /// [nodePublicIPTags] IPTags of instance-level public IPs.
  const AgentPoolNetworkProfileResponse({
    this.allowedHostPorts,
    this.applicationSecurityGroups,
    this.nodePublicIPTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHostPorts': ?pulumi.Input.mapOptionalInputValue<List<PortRangeResponse>, List<Map<String, dynamic>>>(allowedHostPorts, (value) => pulumi.Input.encodeList<PortRangeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?applicationSecurityGroups,
      'nodePublicIPTags': ?pulumi.Input.mapOptionalInputValue<List<IPTagResponse>, List<Map<String, dynamic>>>(nodePublicIPTags, (value) => pulumi.Input.encodeList<IPTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentPoolNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return AgentPoolNetworkProfileResponse(
      allowedHostPorts: (() { final guardedValue = map['allowedHostPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortRangeResponse>(guardedValue, (value) => PortRangeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodePublicIPTags: (() { final guardedValue = map['nodePublicIPTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPTagResponse>(guardedValue, (value) => IPTagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

