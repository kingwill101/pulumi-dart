// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_association_compute_beta.dart';
import 'firewall_policy_rule_compute_beta.dart';

/// The set of arguments for NetworkFirewallPolicy.
class NetworkFirewallPolicyComputeBetaArgs {
  /// A list of associations that belong to this firewall policy.
  final pulumi.Input<List<FirewallPolicyAssociationComputeBeta>>? associations;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Deprecated, please use short name instead. User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? displayName;

  /// Name of the resource. For Organization Firewall Policies it's a [Output Only] numeric ID allocated by Google Cloud which uniquely identifies the Organization Firewall Policy.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// A list of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a firewall policy, a default rule with action "allow" will be added.
  final pulumi.Input<List<FirewallPolicyRuleComputeBeta>>? rules;

  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created. This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? shortName;

  NetworkFirewallPolicyComputeBetaArgs({
    this.associations,
    this.description,
    this.displayName,
    this.name,
    this.project,
    this.requestId,
    this.rules,
    this.shortName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final associationsValue = associations;
    if (associationsValue != null) {
      map['associations'] = pulumi.Input.mapOptionalInputValue<
              List<FirewallPolicyAssociationComputeBeta>,
              List<Map<String, dynamic>>>(
          associationsValue,
          (value) => pulumi.Input.encodeList<
              FirewallPolicyAssociationComputeBeta,
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = pulumi.Input.mapOptionalInputValue<
              List<FirewallPolicyRuleComputeBeta>, List<Map<String, dynamic>>>(
          rulesValue,
          (value) => pulumi.Input.encodeList<FirewallPolicyRuleComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final shortNameValue = shortName;
    if (shortNameValue != null) {
      map['shortName'] = shortNameValue;
    }
    return map;
  }

  factory NetworkFirewallPolicyComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyComputeBetaArgs(
      associations: pulumi.Input.asOptionalInput<
          List<FirewallPolicyAssociationComputeBeta>>(map['associations']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      rules: pulumi.Input.asOptionalInput<List<FirewallPolicyRuleComputeBeta>>(
          map['rules']),
      shortName: pulumi.Input.asOptionalInput<String>(map['shortName']),
    );
  }
}
