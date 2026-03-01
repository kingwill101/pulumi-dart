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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> managedNetworkName,
    required pulumi.Output<FqdnOutboundRule> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      managedNetworkName = pulumi.Input.asInput<String>(managedNetworkName),
      properties = pulumi.Input.asInput<FqdnOutboundRule>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      managedNetworkName: pulumi.Output.create<String>(map['managedNetworkName'] as String),
      properties: pulumi.Output.create<FqdnOutboundRule>(FqdnOutboundRule.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

