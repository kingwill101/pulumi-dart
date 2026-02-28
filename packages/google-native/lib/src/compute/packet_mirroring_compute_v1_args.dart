// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_mirroring_enable_compute_v1.dart';
import 'packet_mirroring_filter_compute_v1.dart';
import 'packet_mirroring_forwarding_rule_info_compute_v1.dart';
import 'packet_mirroring_mirrored_resource_info_compute_v1.dart';
import 'packet_mirroring_network_info_compute_v1.dart';

/// {@template pulumi_compute_v1_packet_mirroring_compute_v1_args_doc}
/// The set of arguments for PacketMirroring.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_packet_mirroring_compute_v1_args_doc}
class PacketMirroringComputeV1Args {
  /// The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  final pulumi.Input<PacketMirroringForwardingRuleInfoComputeV1>? collectorIlb;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  final pulumi.Input<PacketMirroringEnableComputeV1>? enable;

  /// Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  final pulumi.Input<PacketMirroringFilterComputeV1>? filter;

  /// PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  final pulumi.Input<PacketMirroringMirroredResourceInfoComputeV1>?
      mirroredResources;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  final pulumi.Input<PacketMirroringNetworkInfoComputeV1>? network;

  /// The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Creates a new [PacketMirroringComputeV1Args].
  /// [collectorIlb] The Forwarding Rule resource of type loadBalancingScheme=INTERNAL that will be used as collector for mirrored traffic. The specified forwarding rule must have isMirroringCollector set to true.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [enable] Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
  /// [filter] Filter for mirrored traffic. If unspecified, all traffic is mirrored.
  /// [mirroredResources] PacketMirroring mirroredResourceInfos. MirroredResourceInfo specifies a set of mirrored VM instances, subnetworks and/or tags for which traffic from/to all VM instances will be mirrored.
  /// [name] Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] Specifies the mirrored VPC network. Only packets in this network will be mirrored. All mirrored VMs should have a NIC in the given network. All mirrored subnetworks should belong to the given network.
  /// [priority] The priority of applying this configuration. Priority is used to break ties in cases where there is more than one matching rule. In the case of two rules that apply for a given Instance, the one with the lowest-numbered priority value wins. Default value is 1000. Valid range is 0 through 65535.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  PacketMirroringComputeV1Args({
    PacketMirroringForwardingRuleInfoComputeV1? collectorIlb,
    String? description,
    PacketMirroringEnableComputeV1? enable,
    PacketMirroringFilterComputeV1? filter,
    PacketMirroringMirroredResourceInfoComputeV1? mirroredResources,
    String? name,
    PacketMirroringNetworkInfoComputeV1? network,
    int? priority,
    String? project,
    required String region,
    String? requestId,
  })  : collectorIlb = pulumi.Input.asOptionalInput<
            PacketMirroringForwardingRuleInfoComputeV1>(collectorIlb),
        description = pulumi.Input.asOptionalInput<String>(description),
        enable = pulumi.Input.asOptionalInput<PacketMirroringEnableComputeV1>(
            enable),
        filter = pulumi.Input.asOptionalInput<PacketMirroringFilterComputeV1>(
            filter),
        mirroredResources = pulumi.Input.asOptionalInput<
            PacketMirroringMirroredResourceInfoComputeV1>(mirroredResources),
        name = pulumi.Input.asOptionalInput<String>(name),
        network =
            pulumi.Input.asOptionalInput<PacketMirroringNetworkInfoComputeV1>(
                network),
        priority = pulumi.Input.asOptionalInput<int>(priority),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectorIlbValue = collectorIlb;
    if (collectorIlbValue != null) {
      map['collectorIlb'] = pulumi.Input.mapOptionalInputValue<
          PacketMirroringForwardingRuleInfoComputeV1,
          Map<String, dynamic>>(collectorIlbValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = pulumi.Input.mapOptionalInputValue<
          PacketMirroringEnableComputeV1,
          String>(enableValue, (value) => value.value);
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = pulumi.Input.mapOptionalInputValue<
          PacketMirroringFilterComputeV1,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final mirroredResourcesValue = mirroredResources;
    if (mirroredResourcesValue != null) {
      map['mirroredResources'] = pulumi.Input.mapOptionalInputValue<
              PacketMirroringMirroredResourceInfoComputeV1,
              Map<String, dynamic>>(
          mirroredResourcesValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = pulumi.Input.mapOptionalInputValue<
          PacketMirroringNetworkInfoComputeV1,
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

  factory PacketMirroringComputeV1Args.fromMap(Map<String, dynamic> map) {
    return PacketMirroringComputeV1Args(
      collectorIlb: map['collectorIlb'] == null
          ? null
          : PacketMirroringForwardingRuleInfoComputeV1.fromMap(
              (map['collectorIlb'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      enable: map['enable'] == null
          ? null
          : PacketMirroringEnableComputeV1.fromValue(map['enable'] as String),
      filter: map['filter'] == null
          ? null
          : PacketMirroringFilterComputeV1.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      mirroredResources: map['mirroredResources'] == null
          ? null
          : PacketMirroringMirroredResourceInfoComputeV1.fromMap(
              (map['mirroredResources'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null
          ? null
          : PacketMirroringNetworkInfoComputeV1.fromMap(
              (map['network'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
    );
  }
}
