// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of instances belong to the API portal
class ApiPortalInstanceResponse {
  /// Name of the API portal instance
  final pulumi.Input<String> name;

  /// Status of the API portal instance
  final pulumi.Input<String> status;

  /// Creates a new [ApiPortalInstanceResponse].
  /// [name] Name of the API portal instance
  /// [status] Status of the API portal instance
  ApiPortalInstanceResponse({required this.name, required this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'status': status};
  }

  factory ApiPortalInstanceResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalInstanceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
