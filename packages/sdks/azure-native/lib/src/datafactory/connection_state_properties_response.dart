// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The connection state of a managed private endpoint
class ConnectionStatePropertiesResponse {
  /// The actions required on the managed private endpoint
  final pulumi.Input<String> actionsRequired;
  /// The managed private endpoint description
  final pulumi.Input<String> description;
  /// The approval status
  final pulumi.Input<String> status;

  /// Creates a new [ConnectionStatePropertiesResponse].
  /// [actionsRequired] The actions required on the managed private endpoint
  /// [description] The managed private endpoint description
  /// [status] The approval status
  ConnectionStatePropertiesResponse({
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

  factory ConnectionStatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionStatePropertiesResponse(
      actionsRequired: (map['actionsRequired'] as String).input(),
      description: (map['description'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

