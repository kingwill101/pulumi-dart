// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerPrivateLinkServiceConnectionStatePropertyResponse {
  /// The actions required for private link service connection.
  final pulumi.Input<String> actionsRequired;
  /// The private link service connection description.
  final pulumi.Input<String> description;
  /// The private link service connection status.
  final pulumi.Input<String> status;

  /// Creates a new [ServerPrivateLinkServiceConnectionStatePropertyResponse].
  /// [actionsRequired] The actions required for private link service connection.
  /// [description] The private link service connection description.
  /// [status] The private link service connection status.
  const ServerPrivateLinkServiceConnectionStatePropertyResponse({
    required this.actionsRequired,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': description,
      'status': status,
    };
  }

  factory ServerPrivateLinkServiceConnectionStatePropertyResponse.fromMap(Map<String, dynamic> map) {
    return ServerPrivateLinkServiceConnectionStatePropertyResponse(
      actionsRequired: pulumi.Input.fromValue(map['actionsRequired'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

