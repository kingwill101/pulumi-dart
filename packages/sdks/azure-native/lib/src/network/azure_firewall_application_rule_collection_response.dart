// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_response.dart';
import 'azure_firewall_rcaction_response.dart';

/// Application rule collection resource.
class AzureFirewallApplicationRuleCollectionResponse {
  /// The action type of a rule collection.
  final AzureFirewallRCActionResponse? action;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  final String? name;
  /// Priority of the application rule collection resource.
  final int? priority;
  /// The provisioning state of the application rule collection resource.
  final String provisioningState;
  /// Collection of rules used by a application rule collection.
  final List<AzureFirewallApplicationRuleResponse>? rules;

  /// Creates a new [AzureFirewallApplicationRuleCollectionResponse].
  /// [action] The action type of a rule collection.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  /// [priority] Priority of the application rule collection resource.
  /// [provisioningState] The provisioning state of the application rule collection resource.
  /// [rules] Collection of rules used by a application rule collection.
  AzureFirewallApplicationRuleCollectionResponse({
    this.action,
    required this.etag,
    this.id,
    this.name,
    this.priority,
    required this.provisioningState,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AzureFirewallApplicationRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory AzureFirewallApplicationRuleCollectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRuleCollectionResponse(
      action: map['action'] == null ? null : AzureFirewallRCActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AzureFirewallApplicationRuleResponse>(map['rules'], (value) => AzureFirewallApplicationRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

