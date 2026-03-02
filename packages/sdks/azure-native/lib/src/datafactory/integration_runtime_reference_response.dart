// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Integration runtime reference type.
class IntegrationRuntimeReferenceResponse {
  /// Arguments for integration runtime.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Reference integration runtime name.
  final pulumi.Input<String> referenceName;
  /// Type of integration runtime.
  final pulumi.Input<String> type;

  /// Creates a new [IntegrationRuntimeReferenceResponse].
  /// [parameters] Arguments for integration runtime.
  /// [referenceName] Reference integration runtime name.
  /// [type] Type of integration runtime.
  IntegrationRuntimeReferenceResponse({
    this.parameters,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory IntegrationRuntimeReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeReferenceResponse(
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, dynamic>()).input(),
      referenceName: (map['referenceName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

