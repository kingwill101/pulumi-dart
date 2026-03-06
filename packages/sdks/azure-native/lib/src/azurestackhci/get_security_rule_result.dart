// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSecurityRule.
class GetSecurityRuleResult {
  /// The network traffic is allowed or denied.
  final String access;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description for this rule. Restricted to 140 chars.
  final String? description;
  /// The destination address prefixes. CIDR or destination IP ranges.
  final List<String>? destinationAddressPrefixes;
  /// The destination port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final List<String>? destinationPortRanges;
  /// The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  final String direction;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final int priority;
  /// Network protocol this rule applies to.
  final String protocol;
  /// Provisioning state of the SR
  final String provisioningState;
  /// The CIDR or source IP ranges.
  final List<String>? sourceAddressPrefixes;
  /// The source port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  final List<String>? sourcePortRanges;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSecurityRuleResult].
  /// [access] The network traffic is allowed or denied.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description for this rule. Restricted to 140 chars.
  /// [destinationAddressPrefixes] The destination address prefixes. CIDR or destination IP ranges.
  /// [destinationPortRanges] The destination port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [direction] The direction of the rule. The direction specifies if rule will be evaluated on incoming or outgoing traffic.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [priority] The priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Network protocol this rule applies to.
  /// [provisioningState] Provisioning state of the SR
  /// [sourceAddressPrefixes] The CIDR or source IP ranges.
  /// [sourcePortRanges] The source port ranges. Integer or range between 0 and 65535. Asterisk '*' can also be used to match all ports.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSecurityRuleResult({
    required this.access,
    required this.azureApiVersion,
    this.description,
    this.destinationAddressPrefixes,
    this.destinationPortRanges,
    required this.direction,
    this.extendedLocation,
    required this.id,
    required this.name,
    required this.priority,
    required this.protocol,
    required this.provisioningState,
    this.sourceAddressPrefixes,
    this.sourcePortRanges,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'destinationAddressPrefixes': ?destinationAddressPrefixes,
      'destinationPortRanges': ?destinationPortRanges,
      'direction': direction,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'name': name,
      'priority': priority,
      'protocol': protocol,
      'provisioningState': provisioningState,
      'sourceAddressPrefixes': ?sourceAddressPrefixes,
      'sourcePortRanges': ?sourcePortRanges,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSecurityRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityRuleResult(
      access: map['access'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationAddressPrefixes: (() { final guardedValue = map['destinationAddressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      direction: map['direction'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceAddressPrefixes: (() { final guardedValue = map['sourceAddressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

