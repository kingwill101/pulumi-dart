// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'router_appliance_instance2.dart';

/// The set of arguments for Spoke.
class SpokeArgs2 {
  /// The time when the Spoke was created.
  final Input<String>? createTime;

  /// Short description of the spoke resource
  final Input<String>? description;

  /// The resource URL of the hub resource that the spoke is attached to
  final Input<String>? hub;

  /// User-defined labels.
  final Input<Map<String, String>>? labels;

  /// The URIs of linked interconnect attachment resources
  final Input<List<String>>? linkedInterconnectAttachments;

  /// The URIs of linked Router appliance resources
  final Input<List<RouterApplianceInstance2>>? linkedRouterApplianceInstances;

  /// The URIs of linked VPN tunnel resources
  final Input<List<String>>? linkedVpnTunnels;
  final Input<String>? location;

  /// Immutable. The name of a Spoke resource.
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. Unique id for the Spoke to create.
  final Input<String>? spokeId;

  /// The time when the Spoke was updated.
  final Input<String>? updateTime;

  SpokeArgs2({
    this.createTime,
    this.description,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedRouterApplianceInstances,
    this.linkedVpnTunnels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.spokeId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final hubValue = hub;
    if (hubValue != null) {
      map['hub'] = hubValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final linkedInterconnectAttachmentsValue = linkedInterconnectAttachments;
    if (linkedInterconnectAttachmentsValue != null) {
      map['linkedInterconnectAttachments'] = linkedInterconnectAttachmentsValue;
    }
    final linkedRouterApplianceInstancesValue = linkedRouterApplianceInstances;
    if (linkedRouterApplianceInstancesValue != null) {
      map['linkedRouterApplianceInstances'] = Input.mapOptionalInputValue<
              List<RouterApplianceInstance2>, List<Map<String, dynamic>>>(
          linkedRouterApplianceInstancesValue,
          (value) =>
              Input.encodeList<RouterApplianceInstance2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final linkedVpnTunnelsValue = linkedVpnTunnels;
    if (linkedVpnTunnelsValue != null) {
      map['linkedVpnTunnels'] = linkedVpnTunnelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final spokeIdValue = spokeId;
    if (spokeIdValue != null) {
      map['spokeId'] = spokeIdValue;
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory SpokeArgs2.fromMap(Map<String, dynamic> map) {
    return SpokeArgs2(
      createTime: Input.asOptionalInput<String>(map['createTime']),
      description: Input.asOptionalInput<String>(map['description']),
      hub: Input.asOptionalInput<String>(map['hub']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      linkedInterconnectAttachments: Input.asOptionalInput<List<String>>(
          map['linkedInterconnectAttachments']),
      linkedRouterApplianceInstances:
          Input.asOptionalInput<List<RouterApplianceInstance2>>(
              map['linkedRouterApplianceInstances']),
      linkedVpnTunnels:
          Input.asOptionalInput<List<String>>(map['linkedVpnTunnels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      spokeId: Input.asOptionalInput<String>(map['spokeId']),
      updateTime: Input.asOptionalInput<String>(map['updateTime']),
    );
  }
}
