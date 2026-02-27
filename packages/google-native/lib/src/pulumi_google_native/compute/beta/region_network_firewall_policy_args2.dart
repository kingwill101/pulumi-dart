// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'firewall_policy_association2.dart';
import 'firewall_policy_rule2.dart';

/// The set of arguments for RegionNetworkFirewallPolicy.
class RegionNetworkFirewallPolicyArgs2 {
  /// A list of associations that belong to this firewall policy.
  final Input<List<FirewallPolicyAssociation2>>? associations;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Deprecated, please use short name instead. User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? displayName;

  /// Name of the resource. For Organization Firewall Policies it's a [Output Only] numeric ID allocated by Google Cloud which uniquely identifies the Organization Firewall Policy.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a firewall policy, a default rule with action "allow" will be added.
  final Input<List<FirewallPolicyRule2>>? rules;

  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? shortName;

  RegionNetworkFirewallPolicyArgs2({
    this.associations,
    this.description,
    this.displayName,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.rules,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final associationsValue = associations;
    if (associationsValue != null) {
      map['associations'] = Input.mapOptionalInputValue<
              List<FirewallPolicyAssociation2>, List<Map<String, dynamic>>>(
          associationsValue,
          (value) => Input.encodeList<FirewallPolicyAssociation2,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.mapOptionalInputValue<List<FirewallPolicyRule2>,
              List<Map<String, dynamic>>>(
          rulesValue,
          (value) =>
              Input.encodeList<FirewallPolicyRule2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final shortNameValue = shortName;
    if (shortNameValue != null) {
      map['shortName'] = shortNameValue;
    }
    return map;
  }

  factory RegionNetworkFirewallPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyArgs2(
      associations: Input.asOptionalInput<List<FirewallPolicyAssociation2>>(
          map['associations']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      rules: Input.asOptionalInput<List<FirewallPolicyRule2>>(map['rules']),
      shortName: Input.asOptionalInput<String>(map['shortName']),
    );
  }
}
