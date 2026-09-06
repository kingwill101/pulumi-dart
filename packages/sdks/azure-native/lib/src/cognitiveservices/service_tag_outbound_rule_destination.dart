// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service Tag destination for an outbound rule.
class ServiceTagOutboundRuleDestination {
  /// The action for the service tag outbound rule.
  final pulumi.Input<dynamic>? action;
  /// Optional address prefixes. If provided, the serviceTag property will be ignored.
  final pulumi.Input<List<String>?>? addressPrefixes;
  /// Destination port ranges.
  final pulumi.Input<String?>? portRanges;
  /// Network protocol used by the service tag rule.
  final pulumi.Input<String?>? protocol;
  /// Name of the Azure service tag to target.
  final pulumi.Input<String?>? serviceTag;

  /// Creates a new [ServiceTagOutboundRuleDestination].
  /// [action] The action for the service tag outbound rule.
  /// [addressPrefixes] Optional address prefixes. If provided, the serviceTag property will be ignored.
  /// [portRanges] Destination port ranges.
  /// [protocol] Network protocol used by the service tag rule.
  /// [serviceTag] Name of the Azure service tag to target.
  const ServiceTagOutboundRuleDestination({
    this.action,
    this.addressPrefixes,
    this.portRanges,
    this.protocol,
    this.serviceTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'addressPrefixes': ?addressPrefixes,
      'portRanges': ?portRanges,
      'protocol': ?protocol,
      'serviceTag': ?serviceTag,
    };
  }

  factory ServiceTagOutboundRuleDestination.fromMap(Map<String, dynamic> map) {
    return ServiceTagOutboundRuleDestination(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      portRanges: (() { final guardedValue = map['portRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceTag: (() { final guardedValue = map['serviceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
