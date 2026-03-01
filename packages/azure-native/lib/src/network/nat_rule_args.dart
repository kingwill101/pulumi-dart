// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_nat_rule_mapping.dart';

/// {@template pulumi_network_nat_rule_args_doc}
/// The set of arguments for NatRule.
/// {@endtemplate}
/// {@macro pulumi_network_nat_rule_args_doc}
class NatRuleArgs {
  /// The private IP address external mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMapping>>? externalMappings;
  /// The name of the gateway.
  final pulumi.Input<String> gatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The private IP address internal mapping for NAT.
  final pulumi.Input<List<VpnNatRuleMapping>>? internalMappings;
  /// The IP Configuration ID this NAT rule applies to.
  final pulumi.Input<String>? ipConfigurationId;
  /// The Source NAT direction of a VPN NAT.
  final pulumi.Input<String>? mode;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the nat rule.
  final pulumi.Input<String>? natRuleName;
  /// The resource group name of the VpnGateway.
  final pulumi.Input<String> resourceGroupName;
  /// The type of NAT rule for VPN NAT.
  final pulumi.Input<String>? type;

  /// Creates a new [NatRuleArgs].
  /// [externalMappings] The private IP address external mapping for NAT.
  /// [gatewayName] The name of the gateway.
  /// [id] Resource ID.
  /// [internalMappings] The private IP address internal mapping for NAT.
  /// [ipConfigurationId] The IP Configuration ID this NAT rule applies to.
  /// [mode] The Source NAT direction of a VPN NAT.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natRuleName] The name of the nat rule.
  /// [resourceGroupName] The resource group name of the VpnGateway.
  /// [type] The type of NAT rule for VPN NAT.
  NatRuleArgs({
    List<VpnNatRuleMapping>? externalMappings,
    required String gatewayName,
    String? id,
    List<VpnNatRuleMapping>? internalMappings,
    String? ipConfigurationId,
    String? mode,
    String? name,
    String? natRuleName,
    required String resourceGroupName,
    String? type,
  }) :
      externalMappings = pulumi.Input.asOptionalInput<List<VpnNatRuleMapping>>(externalMappings),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      internalMappings = pulumi.Input.asOptionalInput<List<VpnNatRuleMapping>>(internalMappings),
      ipConfigurationId = pulumi.Input.asOptionalInput<String>(ipConfigurationId),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      natRuleName = pulumi.Input.asOptionalInput<String>(natRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMapping>, List<Map<String, dynamic>>>(externalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayName': gatewayName,
      'id': ?id,
      'internalMappings': ?pulumi.Input.mapOptionalInputValue<List<VpnNatRuleMapping>, List<Map<String, dynamic>>>(internalMappings, (value) => pulumi.Input.encodeList<VpnNatRuleMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipConfigurationId': ?ipConfigurationId,
      'mode': ?mode,
      'name': ?name,
      'natRuleName': ?natRuleName,
      'resourceGroupName': resourceGroupName,
      'type': ?type,
    };
  }

  factory NatRuleArgs.fromMap(Map<String, dynamic> map) {
    return NatRuleArgs(
      externalMappings: map['externalMappings'] == null ? null : pulumi.Input.decodeList<VpnNatRuleMapping>(map['externalMappings'], (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>())),
      gatewayName: map['gatewayName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      internalMappings: map['internalMappings'] == null ? null : pulumi.Input.decodeList<VpnNatRuleMapping>(map['internalMappings'], (value) => VpnNatRuleMapping.fromMap((value as Map).cast<String, dynamic>())),
      ipConfigurationId: map['ipConfigurationId'] == null ? null : map['ipConfigurationId'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      natRuleName: map['natRuleName'] == null ? null : map['natRuleName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

