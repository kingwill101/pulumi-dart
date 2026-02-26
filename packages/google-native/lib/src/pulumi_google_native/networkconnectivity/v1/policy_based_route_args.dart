// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'filter4.dart';
import 'interconnect_attachment.dart';
import 'policy_based_route_next_hop_other_routes.dart';
import 'virtual_machine.dart';

/// The set of arguments for PolicyBasedRoute.
class PolicyBasedRouteArgs {
  /// Optional. An optional description of this resource. Provide this field when you create the resource.
  final Input<String>? description;

  /// The filter to match L4 traffic.
  final Input<Filter4> filter;

  /// Optional. The interconnect attachments that this policy-based route applies to.
  final Input<InterconnectAttachment>? interconnectAttachment;

  /// User-defined labels.
  final Input<Map<String, String>>? labels;

  /// Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  final Input<String>? name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final Input<String> network;

  /// Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  final Input<String>? nextHopIlbIp;

  /// Optional. Other routes that will be referenced to determine the next hop of the packet.
  final Input<PolicyBasedRouteNextHopOtherRoutes>? nextHopOtherRoutes;

  /// Required. Unique id for the policy-based route to create.
  final Input<String> policyBasedRouteId;

  /// Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final Input<int>? priority;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Optional. VM instances to which this policy-based route applies to.
  final Input<VirtualMachine>? virtualMachine;

  PolicyBasedRouteArgs({
    this.description,
    required this.filter,
    this.interconnectAttachment,
    this.labels,
    this.name,
    required this.network,
    this.nextHopIlbIp,
    this.nextHopOtherRoutes,
    required this.policyBasedRouteId,
    this.priority,
    this.project,
    this.requestId,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filter'] = Input.mapInputValue<Filter4, Map<String, dynamic>>(
        filter, (value) => value.toMap());
    final interconnectAttachmentValue = interconnectAttachment;
    if (interconnectAttachmentValue != null) {
      map['interconnectAttachment'] = Input.mapOptionalInputValue<
              InterconnectAttachment, Map<String, dynamic>>(
          interconnectAttachmentValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final nextHopIlbIpValue = nextHopIlbIp;
    if (nextHopIlbIpValue != null) {
      map['nextHopIlbIp'] = nextHopIlbIpValue;
    }
    final nextHopOtherRoutesValue = nextHopOtherRoutes;
    if (nextHopOtherRoutesValue != null) {
      map['nextHopOtherRoutes'] = Input.mapOptionalInputValue<
          PolicyBasedRouteNextHopOtherRoutes,
          String>(nextHopOtherRoutesValue, (value) => value.value);
    }
    map['policyBasedRouteId'] = policyBasedRouteId;
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] =
          Input.mapOptionalInputValue<VirtualMachine, Map<String, dynamic>>(
              virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteArgs(
      description: Input.asOptionalInput<String>(map['description']),
      filter: Input.asInput<Filter4>(map['filter']),
      interconnectAttachment: Input.asOptionalInput<InterconnectAttachment>(
          map['interconnectAttachment']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      nextHopIlbIp: Input.asOptionalInput<String>(map['nextHopIlbIp']),
      nextHopOtherRoutes:
          Input.asOptionalInput<PolicyBasedRouteNextHopOtherRoutes>(
              map['nextHopOtherRoutes']),
      policyBasedRouteId: Input.asInput<String>(map['policyBasedRouteId']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      virtualMachine:
          Input.asOptionalInput<VirtualMachine>(map['virtualMachine']),
    );
  }
}
