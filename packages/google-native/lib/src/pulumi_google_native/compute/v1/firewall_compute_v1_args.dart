// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_allowed_item_compute_v1.dart';
import 'firewall_denied_item_compute_v1.dart';
import 'firewall_direction_compute_v1.dart';
import 'firewall_log_config_compute_v1.dart';

/// The set of arguments for Firewall.
class FirewallComputeV1Args {
  /// The list of ALLOW rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a permitted connection.
  final pulumi.Input<List<FirewallAllowedItemComputeV1>>? allowed;

  /// The list of DENY rules specified by this firewall. Each rule specifies a protocol and port-range tuple that describes a denied connection.
  final pulumi.Input<List<FirewallDeniedItemComputeV1>>? denied;

  /// An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;

  /// If destination ranges are specified, the firewall rule applies only to traffic that has destination IP address in these ranges. These ranges must be expressed in CIDR format. Both IPv4 and IPv6 are supported.
  final pulumi.Input<List<String>>? destinationRanges;

  /// Direction of traffic to which this firewall applies, either `INGRESS` or `EGRESS`. The default is `INGRESS`. For `EGRESS` traffic, you cannot specify the sourceTags fields.
  final pulumi.Input<FirewallDirectionComputeV1>? direction;

  /// Denotes whether the firewall rule is disabled. When set to true, the firewall rule is not enforced and the network behaves as if it did not exist. If this is unspecified, the firewall rule will be enabled.
  final pulumi.Input<bool>? disabled;

  /// This field denotes the logging options for a particular firewall rule. If logging is enabled, logs will be exported to Cloud Logging.
  final pulumi.Input<FirewallLogConfigComputeV1>? logConfig;

  /// Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all following characters (except for the last character) must be a dash, lowercase letter, or digit. The last character must be a lowercase letter or digit.
  final pulumi.Input<String>? name;

  /// URL of the network resource for this firewall rule. If not specified when creating a firewall rule, the default network is used: global/networks/default If you choose to specify this field, you can specify the network as a full or partial URL. For example, the following are all valid URLs: - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-network - projects/myproject/global/networks/my-network - global/networks/default
  final pulumi.Input<String>? network;

  /// Priority for this rule. This is an integer between `0` and `65535`, both inclusive. The default value is `1000`. Relative priorities determine which rule takes effect if multiple rules apply. Lower values indicate higher priority. For example, a rule with priority `0` has higher precedence than a rule with priority `1`. DENY rules take precedence over ALLOW rules if they have equal priority. Note that VPC networks have implied rules with a priority of `65535`. To avoid conflicts with the implied rules, use a priority number less than `65535`.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// If source ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. One or both of sourceRanges and sourceTags may be set. If both fields are set, the rule applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the rule to apply. Both IPv4 and IPv6 are supported.
  final pulumi.Input<List<String>>? sourceRanges;

  /// If source service accounts are specified, the firewall rules apply only to traffic originating from an instance with a service account in this list. Source service accounts cannot be used to control traffic to an instance's external IP address because service accounts are associated with an instance, not an IP address. sourceRanges can be set at the same time as sourceServiceAccounts. If both are set, the firewall applies to traffic that has a source IP address within the sourceRanges OR a source IP that belongs to an instance with service account listed in sourceServiceAccount. The connection does not need to match both fields for the firewall to apply. sourceServiceAccounts cannot be used at the same time as sourceTags or targetTags.
  final pulumi.Input<List<String>>? sourceServiceAccounts;

  /// If source tags are specified, the firewall rule applies only to traffic with source IPs that match the primary network interfaces of VM instances that have the tag and are in the same VPC network. Source tags cannot be used to control traffic to an instance's external IP address, it only applies to traffic between instances in the same virtual network. Because tags are associated with instances, not IP addresses. One or both of sourceRanges and sourceTags may be set. If both fields are set, the firewall applies to traffic that has a source IP address within sourceRanges OR a source IP from a resource with a matching tag listed in the sourceTags field. The connection does not need to match both fields for the firewall to apply.
  final pulumi.Input<List<String>>? sourceTags;

  /// A list of service accounts indicating sets of instances located in the network that may make network connections as specified in allowed[]. targetServiceAccounts cannot be used at the same time as targetTags or sourceTags. If neither targetServiceAccounts nor targetTags are specified, the firewall rule applies to all instances on the specified network.
  final pulumi.Input<List<String>>? targetServiceAccounts;

  /// A list of tags that controls which instances the firewall rule applies to. If targetTags are specified, then the firewall rule applies only to instances in the VPC network that have one of those tags. If no targetTags are specified, the firewall rule applies to all instances on the specified network.
  final pulumi.Input<List<String>>? targetTags;

  FirewallComputeV1Args({
    this.allowed,
    this.denied,
    this.description,
    this.destinationRanges,
    this.direction,
    this.disabled,
    this.logConfig,
    this.name,
    this.network,
    this.priority,
    this.project,
    this.requestId,
    this.sourceRanges,
    this.sourceServiceAccounts,
    this.sourceTags,
    this.targetServiceAccounts,
    this.targetTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedValue = allowed;
    if (allowedValue != null) {
      map['allowed'] = pulumi.Input.mapOptionalInputValue<
              List<FirewallAllowedItemComputeV1>, List<Map<String, dynamic>>>(
          allowedValue,
          (value) => pulumi.Input.encodeList<FirewallAllowedItemComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final deniedValue = denied;
    if (deniedValue != null) {
      map['denied'] = pulumi.Input.mapOptionalInputValue<
              List<FirewallDeniedItemComputeV1>, List<Map<String, dynamic>>>(
          deniedValue,
          (value) => pulumi.Input.encodeList<FirewallDeniedItemComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationRangesValue = destinationRanges;
    if (destinationRangesValue != null) {
      map['destinationRanges'] = destinationRangesValue;
    }
    final directionValue = direction;
    if (directionValue != null) {
      map['direction'] = pulumi.Input.mapOptionalInputValue<
          FirewallDirectionComputeV1,
          String>(directionValue, (value) => value.value);
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          FirewallLogConfigComputeV1,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
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
    final sourceRangesValue = sourceRanges;
    if (sourceRangesValue != null) {
      map['sourceRanges'] = sourceRangesValue;
    }
    final sourceServiceAccountsValue = sourceServiceAccounts;
    if (sourceServiceAccountsValue != null) {
      map['sourceServiceAccounts'] = sourceServiceAccountsValue;
    }
    final sourceTagsValue = sourceTags;
    if (sourceTagsValue != null) {
      map['sourceTags'] = sourceTagsValue;
    }
    final targetServiceAccountsValue = targetServiceAccounts;
    if (targetServiceAccountsValue != null) {
      map['targetServiceAccounts'] = targetServiceAccountsValue;
    }
    final targetTagsValue = targetTags;
    if (targetTagsValue != null) {
      map['targetTags'] = targetTagsValue;
    }
    return map;
  }

  factory FirewallComputeV1Args.fromMap(Map<String, dynamic> map) {
    return FirewallComputeV1Args(
      allowed: pulumi.Input.asOptionalInput<List<FirewallAllowedItemComputeV1>>(
          map['allowed']),
      denied: pulumi.Input.asOptionalInput<List<FirewallDeniedItemComputeV1>>(
          map['denied']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationRanges:
          pulumi.Input.asOptionalInput<List<String>>(map['destinationRanges']),
      direction: pulumi.Input.asOptionalInput<FirewallDirectionComputeV1>(
          map['direction']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      logConfig: pulumi.Input.asOptionalInput<FirewallLogConfigComputeV1>(
          map['logConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sourceRanges:
          pulumi.Input.asOptionalInput<List<String>>(map['sourceRanges']),
      sourceServiceAccounts: pulumi.Input.asOptionalInput<List<String>>(
          map['sourceServiceAccounts']),
      sourceTags: pulumi.Input.asOptionalInput<List<String>>(map['sourceTags']),
      targetServiceAccounts: pulumi.Input.asOptionalInput<List<String>>(
          map['targetServiceAccounts']),
      targetTags: pulumi.Input.asOptionalInput<List<String>>(map['targetTags']),
    );
  }
}
