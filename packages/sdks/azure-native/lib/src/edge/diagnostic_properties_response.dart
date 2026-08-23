// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of a Diagnostic resource.
class DiagnosticPropertiesResponse {
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DiagnosticPropertiesResponse].
  /// [provisioningState] The status of the last operation.
  const DiagnosticPropertiesResponse({
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
    };
  }

  factory DiagnosticPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
