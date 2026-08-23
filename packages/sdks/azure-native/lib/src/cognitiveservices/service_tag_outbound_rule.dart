// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_tag_outbound_rule_destination.dart';

/// Service Tag outbound rule for the managed network of a cognitive services account.
class ServiceTagOutboundRule {
  /// Category of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<String>? category;
  /// Service Tag destination.
  final pulumi.Input<ServiceTagOutboundRuleDestination>? destination;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<String>? status;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  /// Expected value is 'ServiceTag'.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceTagOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a cognitive services account.
  /// [destination] Service Tag destination.
  /// [status] Type of a managed network Outbound Rule of a cognitive services account.
  /// [type] Type of a managed network Outbound Rule of a cognitive services account.
  const ServiceTagOutboundRule({
    this.category,
    this.destination,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?pulumi.Input.mapOptionalInputValue<ServiceTagOutboundRuleDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'status': ?status,
      'type': type,
    };
  }

  factory ServiceTagOutboundRule.fromMap(Map<String, dynamic> map) {
    return ServiceTagOutboundRule(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTagOutboundRuleDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
