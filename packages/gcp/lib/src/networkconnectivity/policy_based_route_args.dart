// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_based_route_filter.dart';
import 'policy_based_route_interconnect_attachment.dart';
import 'policy_based_route_virtual_machine.dart';

/// {@template pulumi_networkconnectivity_policy_based_route_policy_based_route_args_doc}
/// The set of arguments for PolicyBasedRoute.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_policy_based_route_policy_based_route_args_doc}
class PolicyBasedRouteArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// The filter to match L4 traffic.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteFilter> filter;

  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteInterconnectAttachment>?
  interconnectAttachment;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the policy based route.
  final pulumi.Input<String>? name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final pulumi.Input<String> network;

  /// The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  final pulumi.Input<String>? nextHopIlbIp;

  /// Other routes that will be referenced to determine the next hop of the packet.
  /// Possible values are: `DEFAULT_ROUTING`.
  final pulumi.Input<String>? nextHopOtherRoutes;

  /// The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final pulumi.Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteVirtualMachine>? virtualMachine;

  /// Creates a new [PolicyBasedRouteArgs].
  /// [description] An optional description of this resource.
  /// [filter] The filter to match L4 traffic.
  /// [interconnectAttachment] The interconnect attachments that this policy-based route applies to.
  /// [labels] User-defined labels.
  /// [name] The name of the policy based route.
  /// [network] Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  /// [nextHopIlbIp] The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  /// [nextHopOtherRoutes] Other routes that will be referenced to determine the next hop of the packet.
  /// [priority] The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [virtualMachine] VM instances to which this policy-based route applies to.
  PolicyBasedRouteArgs({
    String? description,
    required PolicyBasedRouteFilter filter,
    PolicyBasedRouteInterconnectAttachment? interconnectAttachment,
    Map<String, String>? labels,
    String? name,
    required String network,
    String? nextHopIlbIp,
    String? nextHopOtherRoutes,
    int? priority,
    String? project,
    PolicyBasedRouteVirtualMachine? virtualMachine,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       filter = pulumi.Input.asInput<PolicyBasedRouteFilter>(filter),
       interconnectAttachment =
           pulumi.Input.asOptionalInput<PolicyBasedRouteInterconnectAttachment>(
             interconnectAttachment,
           ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asInput<String>(network),
       nextHopIlbIp = pulumi.Input.asOptionalInput<String>(nextHopIlbIp),
       nextHopOtherRoutes = pulumi.Input.asOptionalInput<String>(
         nextHopOtherRoutes,
       ),
       priority = pulumi.Input.asOptionalInput<int>(priority),
       project = pulumi.Input.asOptionalInput<String>(project),
       virtualMachine =
           pulumi.Input.asOptionalInput<PolicyBasedRouteVirtualMachine>(
             virtualMachine,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filter':
          pulumi.Input.mapInputValue<
            PolicyBasedRouteFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'interconnectAttachment':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyBasedRouteInterconnectAttachment,
            Map<String, dynamic>
          >(interconnectAttachment, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'network': network,
      'nextHopIlbIp': ?nextHopIlbIp,
      'nextHopOtherRoutes': ?nextHopOtherRoutes,
      'priority': ?priority,
      'project': ?project,
      'virtualMachine':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyBasedRouteVirtualMachine,
            Map<String, dynamic>
          >(virtualMachine, (value) => value.toMap()),
    };
  }

  factory PolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      filter: PolicyBasedRouteFilter.fromMap(
        (map['filter'] as Map).cast<String, dynamic>(),
      ),
      interconnectAttachment: map['interconnectAttachment'] == null
          ? null
          : PolicyBasedRouteInterconnectAttachment.fromMap(
              (map['interconnectAttachment'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] as String,
      nextHopIlbIp: map['nextHopIlbIp'] == null
          ? null
          : map['nextHopIlbIp'] as String,
      nextHopOtherRoutes: map['nextHopOtherRoutes'] == null
          ? null
          : map['nextHopOtherRoutes'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      virtualMachine: map['virtualMachine'] == null
          ? null
          : PolicyBasedRouteVirtualMachine.fromMap(
              (map['virtualMachine'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
