// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'router_appliance_instance_response2.dart';

/// Result data returned by getSpoke.
class GetSpokeResult2 {
  /// The time when the Spoke was created.
  final String createTime;

  /// Short description of the spoke resource
  final String description;

  /// The resource URL of the hub resource that the spoke is attached to
  final String hub;

  /// User-defined labels.
  final Map<String, String> labels;

  /// The URIs of linked interconnect attachment resources
  final List<String> linkedInterconnectAttachments;

  /// The URIs of linked Router appliance resources
  final List<RouterApplianceInstanceResponse2> linkedRouterApplianceInstances;

  /// The URIs of linked VPN tunnel resources
  final List<String> linkedVpnTunnels;

  /// Immutable. The name of a Spoke resource.
  final String name;

  /// The current lifecycle state of this Hub.
  final String state;

  /// Google-generated UUID for this resource. This is unique across all Spoke resources. If a Spoke resource is deleted and another with the same name is created, it gets a different unique_id.
  final String uniqueId;

  /// The time when the Spoke was updated.
  final String updateTime;

  GetSpokeResult2({
    required this.createTime,
    required this.description,
    required this.hub,
    required this.labels,
    required this.linkedInterconnectAttachments,
    required this.linkedRouterApplianceInstances,
    required this.linkedVpnTunnels,
    required this.name,
    required this.state,
    required this.uniqueId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['hub'] = hub;
    map['labels'] = labels;
    map['linkedInterconnectAttachments'] = linkedInterconnectAttachments;
    map['linkedRouterApplianceInstances'] = Input.encodeList<
            RouterApplianceInstanceResponse2, Map<String, dynamic>>(
        linkedRouterApplianceInstances, (value) => value.toMap());
    map['linkedVpnTunnels'] = linkedVpnTunnels;
    map['name'] = name;
    map['state'] = state;
    map['uniqueId'] = uniqueId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSpokeResult2.fromMap(Map<String, dynamic> map) {
    return GetSpokeResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      hub: map['hub'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      linkedInterconnectAttachments:
          (map['linkedInterconnectAttachments'] as List).cast<String>(),
      linkedRouterApplianceInstances:
          Input.decodeList<RouterApplianceInstanceResponse2>(
              map['linkedRouterApplianceInstances'],
              (value) => RouterApplianceInstanceResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      linkedVpnTunnels: (map['linkedVpnTunnels'] as List).cast<String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      uniqueId: map['uniqueId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
