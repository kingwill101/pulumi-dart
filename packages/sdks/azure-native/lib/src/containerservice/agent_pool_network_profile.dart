// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptag.dart';
import 'port_range.dart';

/// Network settings of an agent pool.
class AgentPoolNetworkProfile {
  /// The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  final pulumi.Input<List<PortRange>>? allowedHostPorts;
  /// The IDs of the application security groups which agent pool will associate when created.
  final pulumi.Input<List<String>>? applicationSecurityGroups;
  /// IPTags of instance-level public IPs.
  final pulumi.Input<List<IPTag>>? nodePublicIPTags;

  /// Creates a new [AgentPoolNetworkProfile].
  /// [allowedHostPorts] The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  /// [applicationSecurityGroups] The IDs of the application security groups which agent pool will associate when created.
  /// [nodePublicIPTags] IPTags of instance-level public IPs.
  AgentPoolNetworkProfile({
    this.allowedHostPorts,
    this.applicationSecurityGroups,
    this.nodePublicIPTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHostPorts': ?pulumi.Input.mapOptionalInputValue<List<PortRange>, List<Map<String, dynamic>>>(allowedHostPorts, (value) => pulumi.Input.encodeList<PortRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?applicationSecurityGroups,
      'nodePublicIPTags': ?pulumi.Input.mapOptionalInputValue<List<IPTag>, List<Map<String, dynamic>>>(nodePublicIPTags, (value) => pulumi.Input.encodeList<IPTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentPoolNetworkProfile.fromMap(Map<String, dynamic> map) {
    return AgentPoolNetworkProfile(
      allowedHostPorts: map['allowedHostPorts'] == null ? null : (pulumi.Input.decodeList<PortRange>(map['allowedHostPorts'], (value) => PortRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : ((map['applicationSecurityGroups'] as List).cast<String>()).input(),
      nodePublicIPTags: map['nodePublicIPTags'] == null ? null : (pulumi.Input.decodeList<IPTag>(map['nodePublicIPTags'], (value) => IPTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

