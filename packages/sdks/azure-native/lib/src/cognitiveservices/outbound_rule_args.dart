// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fqdn_outbound_rule.dart';

/// {@template pulumi_cognitiveservices_outbound_rule_args_doc}
/// The set of arguments for OutboundRule.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_outbound_rule_args_doc}
class OutboundRuleArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  final pulumi.Input<String> managedNetworkName;
  /// Outbound Rule for the managed network of a cognitive services account.
  final pulumi.Input<FqdnOutboundRule> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the cognitive services account managed network outbound rule
  final pulumi.Input<String>? ruleName;

  /// Creates a new [OutboundRuleArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [managedNetworkName] Name of the managedNetwork associated with the cognitive services account. Only 'default' is supported.
  /// [properties] Outbound Rule for the managed network of a cognitive services account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the cognitive services account managed network outbound rule
  OutboundRuleArgs({
    required this.accountName,
    required this.managedNetworkName,
    required this.properties,
    required this.resourceGroupName,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managedNetworkName': managedNetworkName,
      'properties': pulumi.Input.mapInputValue<FqdnOutboundRule, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
    };
  }

  factory OutboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return OutboundRuleArgs(
      accountName: (map['accountName'] as String).input(),
      managedNetworkName: (map['managedNetworkName'] as String).input(),
      properties: (FqdnOutboundRule.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
    );
  }
}

