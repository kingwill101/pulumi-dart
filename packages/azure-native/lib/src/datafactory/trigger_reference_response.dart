// ignore_for_file: unused_element, unnecessary_cast


/// Trigger reference type.
class TriggerReferenceResponse {
  /// Reference trigger name.
  final String referenceName;
  /// Trigger reference type.
  final String type;

  /// Creates a new [TriggerReferenceResponse].
  /// [referenceName] Reference trigger name.
  /// [type] Trigger reference type.
  TriggerReferenceResponse({
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
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

