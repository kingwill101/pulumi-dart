// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linked service reference type.
class LinkedServiceReference {
  /// Arguments for LinkedService.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Reference LinkedService name.
  final pulumi.Input<String> referenceName;
  /// Linked service reference type.
  final pulumi.Input<String> type;

  /// Creates a new [LinkedServiceReference].
  /// [parameters] Arguments for LinkedService.
  /// [referenceName] Reference LinkedService name.
  /// [type] Linked service reference type.
  LinkedServiceReference({
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

  factory LinkedServiceReference.fromMap(Map<String, dynamic> map) {
    return LinkedServiceReference(
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, dynamic>()).input(),
      referenceName: (map['referenceName'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

