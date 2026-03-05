// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_response.dart';
import 'azure_firewall_rcaction_response.dart';

/// Application rule collection resource.
class AzureFirewallApplicationRuleCollectionResponse {
  /// The action type of a rule collection.
  final pulumi.Input<AzureFirewallRCActionResponse>? action;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Priority of the application rule collection resource.
  final pulumi.Input<int>? priority;
  /// The provisioning state of the application rule collection resource.
  final pulumi.Input<String> provisioningState;
  /// Collection of rules used by a application rule collection.
  final pulumi.Input<List<AzureFirewallApplicationRuleResponse>>? rules;

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
      'action': ?pulumi.Input.mapOptionalInputValue<AzureFirewallRCActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallApplicationRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AzureFirewallApplicationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureFirewallApplicationRuleCollectionResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRuleCollectionResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFirewallRCActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureFirewallApplicationRuleResponse>(guardedValue, (value) => AzureFirewallApplicationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

