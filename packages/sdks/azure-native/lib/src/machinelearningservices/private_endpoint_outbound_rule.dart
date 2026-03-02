// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_destination.dart';

/// Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
class PrivateEndpointOutboundRule {
  /// Category of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? category;
  /// Private Endpoint destination for a Private Endpoint Outbound Rule for the managed network of a machine learning workspace.
  final pulumi.Input<PrivateEndpointDestination>? destination;
  final pulumi.Input<List<String>>? fqdns;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  final pulumi.Input<String>? status;
  /// Type of a managed network Outbound Rule of a machine learning workspace.
  /// Expected value is 'PrivateEndpoint'.
  final pulumi.Input<String> type;

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
      'destination': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'fqdns': ?fqdns,
      'status': ?status,
      'type': type,
    };
  }

  factory PrivateEndpointOutboundRule.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointOutboundRule(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      destination: map['destination'] == null ? null : (PrivateEndpointDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      fqdns: map['fqdns'] == null ? null : ((map['fqdns']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

