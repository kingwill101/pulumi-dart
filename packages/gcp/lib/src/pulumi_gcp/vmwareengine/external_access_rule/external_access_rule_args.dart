// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../external_access_rule_destination_ip_range/external_access_rule_destination_ip_range.dart';
import '../external_access_rule_source_ip_range/external_access_rule_source_ip_range.dart';

/// The set of arguments for ExternalAccessRule.
class ExternalAccessRuleArgs {
  /// The action that the external access rule performs.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String> action;

  /// User-provided description for the external access rule.
  final pulumi.Input<String>? description;

  /// If destination ranges are specified, the external access rule applies only to
  /// traffic that has a destination IP address in these ranges.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalAccessRuleDestinationIpRange>>
      destinationIpRanges;

  /// A list of destination ports to which the external access rule applies.
  final pulumi.Input<List<String>> destinationPorts;

  /// The IP protocol to which the external access rule applies.
  final pulumi.Input<String> ipProtocol;

  /// The ID of the external access rule.
  final pulumi.Input<String>? name;

  /// The resource name of the network policy.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  final pulumi.Input<String> parent;

  /// External access rule priority, which determines the external access rule to use when multiple rules apply.
  final pulumi.Input<int> priority;

  /// If source ranges are specified, the external access rule applies only to
  /// traffic that has a source IP address in these ranges.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalAccessRuleSourceIpRange>> sourceIpRanges;

  /// A list of source ports to which the external access rule applies.
  final pulumi.Input<List<String>> sourcePorts;

  ExternalAccessRuleArgs({
    required this.action,
    this.description,
    required this.destinationIpRanges,
    required this.destinationPorts,
    required this.ipProtocol,
    this.name,
    required this.parent,
    required this.priority,
    required this.sourceIpRanges,
    required this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destinationIpRanges'] = pulumi.Input.mapInputValue<
            List<ExternalAccessRuleDestinationIpRange>,
            List<Map<String, dynamic>>>(
        destinationIpRanges,
        (value) => pulumi.Input.encodeList<ExternalAccessRuleDestinationIpRange,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['destinationPorts'] = destinationPorts;
    map['ipProtocol'] = ipProtocol;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parent'] = parent;
    map['priority'] = priority;
    map['sourceIpRanges'] = pulumi.Input.mapInputValue<
            List<ExternalAccessRuleSourceIpRange>, List<Map<String, dynamic>>>(
        sourceIpRanges,
        (value) => pulumi.Input.encodeList<ExternalAccessRuleSourceIpRange,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['sourcePorts'] = sourcePorts;
    return map;
  }

  factory ExternalAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleArgs(
      action: pulumi.Input.asInput<String>(map['action']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationIpRanges:
          pulumi.Input.asInput<List<ExternalAccessRuleDestinationIpRange>>(
              map['destinationIpRanges']),
      destinationPorts:
          pulumi.Input.asInput<List<String>>(map['destinationPorts']),
      ipProtocol: pulumi.Input.asInput<String>(map['ipProtocol']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      priority: pulumi.Input.asInput<int>(map['priority']),
      sourceIpRanges:
          pulumi.Input.asInput<List<ExternalAccessRuleSourceIpRange>>(
              map['sourceIpRanges']),
      sourcePorts: pulumi.Input.asInput<List<String>>(map['sourcePorts']),
    );
  }
}
