// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_based_route_filter/policy_based_route_filter.dart';
import '../policy_based_route_interconnect_attachment/policy_based_route_interconnect_attachment.dart';
import '../policy_based_route_virtual_machine/policy_based_route_virtual_machine.dart';

/// The set of arguments for PolicyBasedRoute.
class PolicyBasedRouteArgs {
  /// An optional description of this resource.
  final Input<String>? description;

  /// The filter to match L4 traffic.
  /// Structure is documented below.
  final Input<PolicyBasedRouteFilter> filter;

  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  final Input<PolicyBasedRouteInterconnectAttachment>? interconnectAttachment;

  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the policy based route.
  final Input<String>? name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final Input<String> network;

  /// The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  final Input<String>? nextHopIlbIp;

  /// Other routes that will be referenced to determine the next hop of the packet.
  /// Possible values are: `DEFAULT_ROUTING`.
  final Input<String>? nextHopOtherRoutes;

  /// The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  final Input<PolicyBasedRouteVirtualMachine>? virtualMachine;

  PolicyBasedRouteArgs({
    this.description,
    required this.filter,
    this.interconnectAttachment,
    this.labels,
    this.name,
    required this.network,
    this.nextHopIlbIp,
    this.nextHopOtherRoutes,
    this.priority,
    this.project,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filter'] =
        Input.mapInputValue<PolicyBasedRouteFilter, Map<String, dynamic>>(
            filter, (value) => value.toMap());
    final interconnectAttachmentValue = interconnectAttachment;
    if (interconnectAttachmentValue != null) {
      map['interconnectAttachment'] = Input.mapOptionalInputValue<
              PolicyBasedRouteInterconnectAttachment, Map<String, dynamic>>(
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
      map['nextHopOtherRoutes'] = nextHopOtherRoutesValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final virtualMachineValue = virtualMachine;
    if (virtualMachineValue != null) {
      map['virtualMachine'] = Input.mapOptionalInputValue<
          PolicyBasedRouteVirtualMachine,
          Map<String, dynamic>>(virtualMachineValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteArgs(
      description: Input.asOptionalInput<String>(map['description']),
      filter: Input.asInput<PolicyBasedRouteFilter>(map['filter']),
      interconnectAttachment:
          Input.asOptionalInput<PolicyBasedRouteInterconnectAttachment>(
              map['interconnectAttachment']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      nextHopIlbIp: Input.asOptionalInput<String>(map['nextHopIlbIp']),
      nextHopOtherRoutes:
          Input.asOptionalInput<String>(map['nextHopOtherRoutes']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      virtualMachine: Input.asOptionalInput<PolicyBasedRouteVirtualMachine>(
          map['virtualMachine']),
    );
  }
}
