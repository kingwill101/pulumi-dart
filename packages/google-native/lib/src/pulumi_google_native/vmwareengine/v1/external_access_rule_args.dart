// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_access_rule_action.dart';
import 'ip_range.dart';

/// The set of arguments for ExternalAccessRule.
class ExternalAccessRuleArgs {
  /// The action that the external access rule performs.
  final pulumi.Input<ExternalAccessRuleAction>? action;

  /// User-provided description for this external access rule.
  final pulumi.Input<String>? description;

  /// If destination ranges are specified, the external access rule applies only to the traffic that has a destination IP address in these ranges. The specified IP addresses must have reserved external IP addresses in the scope of the parent network policy. To match all external IP addresses in the scope of the parent network policy, specify `0.0.0.0/0`. To match a specific external IP address, specify it using the `IpRange.external_address` property.
  final pulumi.Input<List<IpRange>>? destinationIpRanges;

  /// A list of destination ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all destination ports, specify `["0-65535"]`.
  final pulumi.Input<List<String>>? destinationPorts;

  /// Required. The user-provided identifier of the `ExternalAccessRule` to be created. This identifier must be unique among `ExternalAccessRule` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> externalAccessRuleId;

  /// The IP protocol to which the external access rule applies. This value can be one of the following three protocol strings (not case-sensitive): `tcp`, `udp`, or `icmp`.
  final pulumi.Input<String>? ipProtocol;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> networkPolicyId;

  /// External access rule priority, which determines the external access rule to use when multiple rules apply. If multiple rules have the same priority, their ordering is non-deterministic. If specific ordering is required, assign unique priorities to enforce such ordering. The external access rule priority is an integer from 100 to 4096, both inclusive. Lower integers indicate higher precedence. For example, a rule with priority `100` has higher precedence than a rule with priority `101`.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if the original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// If source ranges are specified, the external access rule applies only to traffic that has a source IP address in these ranges. These ranges can either be expressed in the CIDR format or as an IP address. As only inbound rules are supported, `ExternalAddress` resources cannot be the source IP addresses of an external access rule. To match all source addresses, specify `0.0.0.0/0`.
  final pulumi.Input<List<IpRange>>? sourceIpRanges;

  /// A list of source ports to which the external access rule applies. This field is only applicable for the UDP or TCP protocol. Each entry must be either an integer or a range. For example: `["22"]`, `["80","443"]`, or `["12345-12349"]`. To match all source ports, specify `["0-65535"]`.
  final pulumi.Input<List<String>>? sourcePorts;

  ExternalAccessRuleArgs({
    this.action,
    this.description,
    this.destinationIpRanges,
    this.destinationPorts,
    required this.externalAccessRuleId,
    this.ipProtocol,
    this.location,
    required this.networkPolicyId,
    this.priority,
    this.project,
    this.requestId,
    this.sourceIpRanges,
    this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] =
          pulumi.Input.mapOptionalInputValue<ExternalAccessRuleAction, String>(
              actionValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationIpRangesValue = destinationIpRanges;
    if (destinationIpRangesValue != null) {
      map['destinationIpRanges'] = pulumi.Input.mapOptionalInputValue<
              List<IpRange>, List<Map<String, dynamic>>>(
          destinationIpRangesValue,
          (value) => pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final destinationPortsValue = destinationPorts;
    if (destinationPortsValue != null) {
      map['destinationPorts'] = destinationPortsValue;
    }
    map['externalAccessRuleId'] = externalAccessRuleId;
    final ipProtocolValue = ipProtocol;
    if (ipProtocolValue != null) {
      map['ipProtocol'] = ipProtocolValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['networkPolicyId'] = networkPolicyId;
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
    final sourceIpRangesValue = sourceIpRanges;
    if (sourceIpRangesValue != null) {
      map['sourceIpRanges'] = pulumi.Input.mapOptionalInputValue<List<IpRange>,
              List<Map<String, dynamic>>>(
          sourceIpRangesValue,
          (value) => pulumi.Input.encodeList<IpRange, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final sourcePortsValue = sourcePorts;
    if (sourcePortsValue != null) {
      map['sourcePorts'] = sourcePortsValue;
    }
    return map;
  }

  factory ExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleArgs(
      action:
          pulumi.Input.asOptionalInput<ExternalAccessRuleAction>(map['action']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationIpRanges: pulumi.Input.asOptionalInput<List<IpRange>>(
          map['destinationIpRanges']),
      destinationPorts:
          pulumi.Input.asOptionalInput<List<String>>(map['destinationPorts']),
      externalAccessRuleId:
          pulumi.Input.asInput<String>(map['externalAccessRuleId']),
      ipProtocol: pulumi.Input.asOptionalInput<String>(map['ipProtocol']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      networkPolicyId: pulumi.Input.asInput<String>(map['networkPolicyId']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceIpRanges:
          pulumi.Input.asOptionalInput<List<IpRange>>(map['sourceIpRanges']),
      sourcePorts:
          pulumi.Input.asOptionalInput<List<String>>(map['sourcePorts']),
    );
  }
}
