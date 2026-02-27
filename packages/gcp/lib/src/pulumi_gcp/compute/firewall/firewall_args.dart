// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../firewall_allow/firewall_allow.dart';
import '../firewall_deny/firewall_deny.dart';
import '../firewall_log_config/firewall_log_config.dart';
import '../firewall_params/firewall_params.dart';

/// The set of arguments for Firewall.
class FirewallArgs {
  /// The list of ALLOW rules specified by this firewall. Each rule
  /// specifies a protocol and port-range tuple that describes a permitted
  /// connection.
  /// Structure is documented below.
  final Input<List<FirewallAllow>>? allows;

  /// The list of DENY rules specified by this firewall. Each rule specifies
  /// a protocol and port-range tuple that describes a denied connection.
  /// Structure is documented below.
  final Input<List<FirewallDeny>>? denies;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final Input<String>? description;

  /// If destination ranges are specified, the firewall will apply only to
  /// traffic that has destination IP address in these ranges. These ranges
  /// must be expressed in CIDR format. IPv4 or IPv6 ranges are supported.
  final Input<List<String>>? destinationRanges;

  /// Direction of traffic to which this firewall applies; default is
  /// INGRESS. Note: For INGRESS traffic, one of `source_ranges`,
  /// `source_tags` or `source_service_accounts` is required.
  /// Possible values are: `INGRESS`, `EGRESS`.
  final Input<String>? direction;

  /// Denotes whether the firewall rule is disabled, i.e not applied to the
  /// network it is associated with. When set to true, the firewall rule is
  /// not enforced and the network behaves as if it did not exist. If this
  /// is unspecified, the firewall rule will be enabled.
  final Input<bool>? disabled;

  /// This field denotes whether to enable logging for a particular firewall rule.
  /// If logging is enabled, logs will be exported to Stackdriver. Deprecated in favor of `log_config`
  final Input<bool>? enableLogging;

  /// This field denotes the logging options for a particular firewall rule.
  /// If defined, logging is enabled, and logs will be exported to Cloud Logging.
  /// Structure is documented below.
  final Input<FirewallLogConfig>? logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// The name or self_link of the network to attach this firewall to.
  final Input<String> network;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final Input<FirewallParams>? params;

  /// Priority for this rule. This is an integer between 0 and 65535, both
  /// inclusive. When not specified, the value assumed is 1000. Relative
  /// priorities determine precedence of conflicting rules. Lower value of
  /// priority implies higher precedence (eg, a rule with priority 0 has
  /// higher precedence than a rule with priority 1). DENY rules take
  /// precedence over ALLOW rules having equal priority.
  final Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// If source ranges are specified, the firewall will apply only to
  /// traffic that has source IP address in these ranges. These ranges must
  /// be expressed in CIDR format. One or both of sourceRanges and
  /// sourceTags may be set. If both properties are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP that belongs to a tag listed in the sourceTags property. The
  /// connection does not need to match both properties for the firewall to
  /// apply. IPv4 or IPv6 ranges are supported. For INGRESS traffic, one of
  /// `source_ranges`, `source_tags` or `source_service_accounts` is required.
  final Input<List<String>>? sourceRanges;

  /// If source service accounts are specified, the firewall will apply only
  /// to traffic originating from an instance with a service account in this
  /// list. Source service accounts cannot be used to control traffic to an
  /// instance's external IP address because service accounts are associated
  /// with an instance, not an IP address. sourceRanges can be set at the
  /// same time as sourceServiceAccounts. If both are set, the firewall will
  /// apply to traffic that has source IP address within sourceRanges OR the
  /// source IP belongs to an instance with service account listed in
  /// sourceServiceAccount. The connection does not need to match both
  /// properties for the firewall to apply. sourceServiceAccounts cannot be
  /// used at the same time as sourceTags or targetTags. For INGRESS traffic,
  /// one of `source_ranges`, `source_tags` or `source_service_accounts` is required.
  final Input<List<String>>? sourceServiceAccounts;

  /// If source tags are specified, the firewall will apply only to traffic
  /// with source IP that belongs to a tag listed in source tags. Source
  /// tags cannot be used to control traffic to an instance's external IP
  /// address. Because tags are associated with an instance, not an IP
  /// address. One or both of sourceRanges and sourceTags may be set. If
  /// both properties are set, the firewall will apply to traffic that has
  /// source IP address within sourceRanges OR the source IP that belongs to
  /// a tag listed in the sourceTags property. The connection does not need
  /// to match both properties for the firewall to apply. For INGRESS traffic,
  /// one of `source_ranges`, `source_tags` or `source_service_accounts` is required.
  final Input<List<String>>? sourceTags;

  /// A list of service accounts indicating sets of instances located in the
  /// network that may make network connections as specified in allowed[].
  /// targetServiceAccounts cannot be used at the same time as targetTags or
  /// sourceTags. If neither targetServiceAccounts nor targetTags are
  /// specified, the firewall rule applies to all instances on the specified
  /// network.
  final Input<List<String>>? targetServiceAccounts;

  /// A list of instance tags indicating sets of instances located in the
  /// network that may make network connections as specified in allowed[].
  /// If no targetTags are specified, the firewall rule applies to all
  /// instances on the specified network.
  final Input<List<String>>? targetTags;

  FirewallArgs({
    this.allows,
    this.denies,
    this.description,
    this.destinationRanges,
    this.direction,
    this.disabled,
    this.enableLogging,
    this.logConfig,
    this.name,
    required this.network,
    this.params,
    this.priority,
    this.project,
    this.sourceRanges,
    this.sourceServiceAccounts,
    this.sourceTags,
    this.targetServiceAccounts,
    this.targetTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowsValue = allows;
    if (allowsValue != null) {
      map['allows'] = Input.mapOptionalInputValue<List<FirewallAllow>,
              List<Map<String, dynamic>>>(
          allowsValue,
          (value) => Input.encodeList<FirewallAllow, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final deniesValue = denies;
    if (deniesValue != null) {
      map['denies'] = Input.mapOptionalInputValue<List<FirewallDeny>,
              List<Map<String, dynamic>>>(
          deniesValue,
          (value) => Input.encodeList<FirewallDeny, Map<String, dynamic>>(
              value, (value) => value.toMap()));
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
      map['direction'] = directionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] =
          Input.mapOptionalInputValue<FirewallLogConfig, Map<String, dynamic>>(
              logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['network'] = network;
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<FirewallParams, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
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

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      allows: Input.asOptionalInput<List<FirewallAllow>>(map['allows']),
      denies: Input.asOptionalInput<List<FirewallDeny>>(map['denies']),
      description: Input.asOptionalInput<String>(map['description']),
      destinationRanges:
          Input.asOptionalInput<List<String>>(map['destinationRanges']),
      direction: Input.asOptionalInput<String>(map['direction']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      logConfig: Input.asOptionalInput<FirewallLogConfig>(map['logConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asInput<String>(map['network']),
      params: Input.asOptionalInput<FirewallParams>(map['params']),
      priority: Input.asOptionalInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      sourceRanges: Input.asOptionalInput<List<String>>(map['sourceRanges']),
      sourceServiceAccounts:
          Input.asOptionalInput<List<String>>(map['sourceServiceAccounts']),
      sourceTags: Input.asOptionalInput<List<String>>(map['sourceTags']),
      targetServiceAccounts:
          Input.asOptionalInput<List<String>>(map['targetServiceAccounts']),
      targetTags: Input.asOptionalInput<List<String>>(map['targetTags']),
    );
  }
}
