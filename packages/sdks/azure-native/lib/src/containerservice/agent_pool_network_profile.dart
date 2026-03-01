// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iptag.dart';
import 'port_range.dart';

/// Network settings of an agent pool.
class AgentPoolNetworkProfile {
  /// The port ranges that are allowed to access. The specified ranges are allowed to overlap.
  final List<PortRange>? allowedHostPorts;
  /// The IDs of the application security groups which agent pool will associate when created.
  final List<String>? applicationSecurityGroups;
  /// IPTags of instance-level public IPs.
  final List<IPTag>? nodePublicIPTags;

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
      'allowedHostPorts': ?allowedHostPorts == null ? null : pulumi.Input.encodeList<PortRange, Map<String, dynamic>>(allowedHostPorts!, (value) => value.toMap()),
      'applicationSecurityGroups': ?applicationSecurityGroups,
      'nodePublicIPTags': ?nodePublicIPTags == null ? null : pulumi.Input.encodeList<IPTag, Map<String, dynamic>>(nodePublicIPTags!, (value) => value.toMap()),
    };
  }

  factory AgentPoolNetworkProfile.fromMap(Map<String, dynamic> map) {
    return AgentPoolNetworkProfile(
      allowedHostPorts: map['allowedHostPorts'] == null ? null : pulumi.Input.decodeList<PortRange>(map['allowedHostPorts'], (value) => PortRange.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : (map['applicationSecurityGroups'] as List).cast<String>(),
      nodePublicIPTags: map['nodePublicIPTags'] == null ? null : pulumi.Input.decodeList<IPTag>(map['nodePublicIPTags'], (value) => IPTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

