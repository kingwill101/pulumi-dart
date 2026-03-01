// ignore_for_file: unused_element, unnecessary_cast


/// Trigger reference type.
class TriggerReference {
  /// Reference trigger name.
  final String referenceName;
  /// Trigger reference type.
  final String type;

  /// Creates a new [TriggerReference].
  /// [referenceName] Reference trigger name.
  /// [type] Trigger reference type.
  TriggerReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory TriggerReference.fromMap(Map<String, dynamic> map) {
    return TriggerReference(
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

