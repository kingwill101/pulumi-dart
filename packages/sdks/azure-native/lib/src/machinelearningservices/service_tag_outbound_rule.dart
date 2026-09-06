// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_tag_destination.dart';

/// Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagOutboundRule {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<dynamic>? category;
  /// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<ServiceTagDestination?>? destination;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<dynamic>? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'ServiceTag'.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceTagOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  const ServiceTagOutboundRule({
    this.category,
    this.destination,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?pulumi.Input.mapOptionalInputValue<ServiceTagDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'status': ?status,
      'type': type,
    };
  }

  factory ServiceTagOutboundRule.fromMap(Map<String, dynamic> map) {
    return ServiceTagOutboundRule(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTagDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
