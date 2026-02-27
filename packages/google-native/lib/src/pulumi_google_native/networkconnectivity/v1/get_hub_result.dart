// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_vpcresponse.dart';
import 'spoke_summary_response.dart';

/// Result data returned by getHub.
class GetHubResult {
  /// The time the hub was created.
  final String createTime;

  /// An optional description of the hub.
  final String description;

  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final Map<String, String> labels;

  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  final String name;

  /// The route tables that belong to this hub. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}/routeTables/{route_table_id}` This field is read-only. Network Connectivity Center automatically populates it based on the route tables nested under the hub.
  final List<String> routeTables;

  /// The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  final List<RoutingVPCResponse> routingVpcs;

  /// A summary of the spokes associated with a hub. The summary includes a count of spokes according to type and according to state. If any spokes are inactive, the summary also lists the reasons they are inactive, including a count for each reason.
  final SpokeSummaryResponse spokeSummary;

  /// The current lifecycle state of this hub.
  final String state;

  /// The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  final String uniqueId;

  /// The time the hub was last updated.
  final String updateTime;

  GetHubResult({
    required this.createTime,
    required this.description,
    required this.labels,
    required this.name,
    required this.routeTables,
    required this.routingVpcs,
    required this.spokeSummary,
    required this.state,
    required this.uniqueId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['name'] = name;
    map['routeTables'] = routeTables;
    map['routingVpcs'] =
        pulumi.Input.encodeList<RoutingVPCResponse, Map<String, dynamic>>(
            routingVpcs, (value) => value.toMap());
    map['spokeSummary'] = spokeSummary.toMap();
    map['state'] = state;
    map['uniqueId'] = uniqueId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetHubResult.fromMap(Map<String, dynamic> map) {
    return GetHubResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      routeTables: (map['routeTables'] as List).cast<String>(),
      routingVpcs: pulumi.Input.decodeList<RoutingVPCResponse>(
          map['routingVpcs'],
          (value) => RoutingVPCResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      spokeSummary: SpokeSummaryResponse.fromMap(
          (map['spokeSummary'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      uniqueId: map['uniqueId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
