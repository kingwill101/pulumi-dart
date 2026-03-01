// ignore_for_file: unused_element, unnecessary_cast

import 'private_endpoint_destination.dart';

/// Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointOutboundRule {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final String? category;
  /// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
  final PrivateEndpointDestination? destination;
  final List<String>? fqdns;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final String? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'PrivateEndpoint'.
  final String type;

  /// Creates a new [PrivateEndpointOutboundRule].
  /// [category] Category of a managed network Outbound Rule of a machine learning workspace.
  /// [destination] Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
  /// [fqdns] Optional.
  /// [status] Type of a managed network Outbound Rule of a machine learning workspace.
  /// [type] Type of a managed network Outbound Rule of a machine learning workspace.
  PrivateEndpointOutboundRule({
    this.category,
    this.destination,
    this.fqdns,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'destination': ?destination == null ? null : destination!.toMap(),
      'fqdns': ?fqdns,
      'status': ?status,
      'type': type,
    };
  }

  factory PrivateEndpointOutboundRule.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointOutboundRule(
      category: map['category'] == null ? null : map['category'] as String,
      destination: map['destination'] == null ? null : PrivateEndpointDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      fqdns: map['fqdns'] == null ? null : (map['fqdns'] as List).cast<String>(),
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] as String,
    );
  }
}

