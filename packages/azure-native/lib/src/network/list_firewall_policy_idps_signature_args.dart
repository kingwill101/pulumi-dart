// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_items.dart';
import 'order_by.dart';

/// {@template pulumi_network_list_firewall_policy_idps_signature_args_doc}
/// Arguments for listFirewallPolicyIdpsSignature.
/// {@endtemplate}
/// {@macro pulumi_network_list_firewall_policy_idps_signature_args_doc}
class ListFirewallPolicyIdpsSignatureArgs {
  /// Contain all filters names and values
  final pulumi.Input<List<FilterItems>>? filters;
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Column to sort response by
  final pulumi.Input<OrderBy>? orderBy;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The number of the results to return in each page
  final pulumi.Input<int>? resultsPerPage;
  /// Search term in all columns
  final pulumi.Input<String>? search;
  /// The number of records matching the filter to skip
  final pulumi.Input<int>? skip;

  /// Creates a new [ListFirewallPolicyIdpsSignatureArgs].
  /// [filters] Contain all filters names and values
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [orderBy] Column to sort response by
  /// [resourceGroupName] The name of the resource group.
  /// [resultsPerPage] The number of the results to return in each page
  /// [search] Search term in all columns
  /// [skip] The number of records matching the filter to skip
  ListFirewallPolicyIdpsSignatureArgs({
    List<FilterItems>? filters,
    required String firewallPolicyName,
    OrderBy? orderBy,
    required String resourceGroupName,
    int? resultsPerPage,
    String? search,
    int? skip,
  }) :
      filters = pulumi.Input.asOptionalInput<List<FilterItems>>(filters),
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      orderBy = pulumi.Input.asOptionalInput<OrderBy>(orderBy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resultsPerPage = pulumi.Input.asOptionalInput<int>(resultsPerPage),
      search = pulumi.Input.asOptionalInput<String>(search),
      skip = pulumi.Input.asOptionalInput<int>(skip);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<FilterItems>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<FilterItems, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallPolicyName': firewallPolicyName,
      'orderBy': ?pulumi.Input.mapOptionalInputValue<OrderBy, Map<String, dynamic>>(orderBy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resultsPerPage': ?resultsPerPage,
      'search': ?search,
      'skip': ?skip,
    };
  }

  factory ListFirewallPolicyIdpsSignatureArgs.fromMap(Map<String, dynamic> map) {
    return ListFirewallPolicyIdpsSignatureArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<FilterItems>(map['filters'], (value) => FilterItems.fromMap((value as Map).cast<String, dynamic>())),
      firewallPolicyName: map['firewallPolicyName'] as String,
      orderBy: map['orderBy'] == null ? null : OrderBy.fromMap((map['orderBy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      resultsPerPage: map['resultsPerPage'] == null ? null : map['resultsPerPage'] as int,
      search: map['search'] == null ? null : map['search'] as String,
      skip: map['skip'] == null ? null : map['skip'] as int,
    );
  }
}

