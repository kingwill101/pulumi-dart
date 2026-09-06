// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FQDN Outbound Rule for the managed network of a cognitive services account.
class FqdnOutboundRule {
  /// Category of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<dynamic>? category;
  final pulumi.Input<String?>? destination;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  final pulumi.Input<dynamic>? status;
  /// Type of a managed network Outbound Rule of a cognitive services account.
  /// Expected value is 'FQDN'.
  final pulumi.Input<String> type;

  /// Creates a new [FqdnOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a cognitive services account.
  /// [destination] Optional.
  /// [status] Type of a managed network Outbound Rule of a cognitive services account.
  /// [type] Type of a managed network Outbound Rule of a cognitive services account.
  const FqdnOutboundRule({
    this.category,
    this.destination,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?destination,
      'status': ?status,
      'type': type,
    };
  }

  factory FqdnOutboundRule.fromMap(Map<String, dynamic> map) {
    return FqdnOutboundRule(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
