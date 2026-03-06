// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Trigger reference type.
class TriggerReferenceResponse {
  /// Reference trigger name.
  final pulumi.Input<String> referenceName;
  /// Trigger reference type.
  final pulumi.Input<String> type;

  /// Creates a new [TriggerReferenceResponse].
  /// [referenceName] Reference trigger name.
  /// [type] Trigger reference type.
  const TriggerReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory TriggerReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TriggerReferenceResponse(
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

