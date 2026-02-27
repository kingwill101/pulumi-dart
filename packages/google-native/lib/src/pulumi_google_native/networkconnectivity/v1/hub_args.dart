// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'routing_vpc.dart';

/// The set of arguments for Hub.
class HubArgs {
  /// An optional description of the hub.
  final Input<String>? description;

  /// Required. A unique identifier for the hub.
  final Input<String> hubId;

  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final Input<Map<String, String>>? labels;

  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  final Input<String>? name;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  final Input<List<RoutingVPC>>? routingVpcs;

  HubArgs({
    this.description,
    required this.hubId,
    this.labels,
    this.name,
    this.project,
    this.requestId,
    this.routingVpcs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['hubId'] = hubId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
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
    final routingVpcsValue = routingVpcs;
    if (routingVpcsValue != null) {
      map['routingVpcs'] = Input.mapOptionalInputValue<List<RoutingVPC>,
              List<Map<String, dynamic>>>(
          routingVpcsValue,
          (value) => Input.encodeList<RoutingVPC, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      description: Input.asOptionalInput<String>(map['description']),
      hubId: Input.asInput<String>(map['hubId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      routingVpcs: Input.asOptionalInput<List<RoutingVPC>>(map['routingVpcs']),
    );
  }
}
