// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'inbound_rule_properties.dart';

/// {@template pulumi_azurestackhci_inbound_rule_args_doc}
/// The set of arguments for InboundRule.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_inbound_rule_args_doc}
class InboundRuleArgs {
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// Name of the inbound rule
  final pulumi.Input<String?>? inboundRuleName;
  /// Name of the nat gateway
  final pulumi.Input<String> natGatewayName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<InboundRuleProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [InboundRuleArgs].
  /// [extendedLocation] The extendedLocation of the resource.
  /// [inboundRuleName] Name of the inbound rule
  /// [natGatewayName] Name of the nat gateway
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const InboundRuleArgs({
    this.extendedLocation,
    this.inboundRuleName,
    required this.natGatewayName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'inboundRuleName': ?inboundRuleName,
      'natGatewayName': natGatewayName,
      'properties': ?pulumi.Input.mapOptionalInputValue<InboundRuleProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory InboundRuleArgs.fromMap(Map<String, dynamic> map) {
    return InboundRuleArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inboundRuleName: (() { final guardedValue = map['inboundRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayName: pulumi.Input.fromValue(map['natGatewayName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InboundRuleProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
