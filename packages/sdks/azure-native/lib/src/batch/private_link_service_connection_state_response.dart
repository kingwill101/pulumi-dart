// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The private link service connection state of the private endpoint connection
class PrivateLinkServiceConnectionStateResponse {
  /// Action required on the private connection state
  final pulumi.Input<String> actionsRequired;
  /// Description of the private Connection state
  final pulumi.Input<String>? description;
  /// The status of the Batch private endpoint connection
  final pulumi.Input<String> status;

  /// Creates a new [PrivateLinkServiceConnectionStateResponse].
  /// [actionsRequired] Action required on the private connection state
  /// [description] Description of the private Connection state
  /// [status] The status of the Batch private endpoint connection
  PrivateLinkServiceConnectionStateResponse({
    required this.actionsRequired,
    this.description,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionsRequired': actionsRequired,
      'description': ?description,
      'status': status,
    };
  }

  factory PrivateLinkServiceConnectionStateResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionStateResponse(
      actionsRequired: (map['actionsRequired'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

