// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_tag_destination.dart';

/// Service Tag Outbound Rule for the managed network of a machine learning workspace.
class ServiceTagOutboundRule {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? category;
  /// Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<ServiceTagDestination>? destination;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'ServiceTag'.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceTagOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Service Tag destination for a Service Tag Outbound Rule for the managed network of a machine learning workspace.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  ServiceTagOutboundRule({
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
      category: map['category'] == null ? null : (map['category'] as String).input(),
      destination: map['destination'] == null ? null : (ServiceTagDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

