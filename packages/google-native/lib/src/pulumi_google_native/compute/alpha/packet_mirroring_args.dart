// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'packet_mirroring_enable.dart';
import 'packet_mirroring_filter.dart';
import 'packet_mirroring_forwarding_rule_info.dart';
import 'packet_mirroring_mirrored_resource_info.dart';
import 'packet_mirroring_network_info.dart';

/// The set of arguments for PacketMirroring.
class PacketMirroringArgs {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  final Input<PacketMirroringForwardingRuleInfo>? collectorIlb;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  final Input<PacketMirroringEnable>? enable;

  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  final Input<PacketMirroringFilter>? filter;

  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  final Input<PacketMirroringMirroredResourceInfo>? mirroredResources;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  final Input<PacketMirroringNetworkInfo>? network;

  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  final Input<int>? priority;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  PacketMirroringArgs({
    this.collectorIlb,
    this.description,
    this.enable,
    this.filter,
    this.mirroredResources,
    this.name,
    this.network,
    this.priority,
    this.project,
    required this.region,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectorIlbValue = collectorIlb;
    if (collectorIlbValue != null) {
      map['collectorIlb'] = Input.mapOptionalInputValue<
          PacketMirroringForwardingRuleInfo,
          Map<String, dynamic>>(collectorIlbValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] =
          Input.mapOptionalInputValue<PacketMirroringEnable, String>(
              enableValue, (value) => value.value);
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = Input.mapOptionalInputValue<PacketMirroringFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final mirroredResourcesValue = mirroredResources;
    if (mirroredResourcesValue != null) {
      map['mirroredResources'] = Input.mapOptionalInputValue<
              PacketMirroringMirroredResourceInfo, Map<String, dynamic>>(
          mirroredResourcesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = Input.mapOptionalInputValue<PacketMirroringNetworkInfo,
          Map<String, dynamic>>(networkValue, (value) => value.toMap());
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory PacketMirroringArgs.fromMap(Map<String, dynamic> map) {
    return PacketMirroringArgs(
      collectorIlb: Input.asOptionalInput<PacketMirroringForwardingRuleInfo>(
          map['collectorIlb']),
      description: Input.asOptionalInput<String>(map['description']),
      enable: Input.asOptionalInput<PacketMirroringEnable>(map['enable']),
      filter: Input.asOptionalInput<PacketMirroringFilter>(map['filter']),
      mirroredResources:
          Input.asOptionalInput<PacketMirroringMirroredResourceInfo>(
              map['mirroredResources']),
      name: Input.asOptionalInput<String>(map['name']),
      network:
          Input.asOptionalInput<PacketMirroringNetworkInfo>(map['network']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
