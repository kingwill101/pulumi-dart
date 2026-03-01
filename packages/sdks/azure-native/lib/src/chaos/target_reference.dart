// ignore_for_file: unused_element, unnecessary_cast


/// Model that represents a reference to a Target in the selector.
class TargetReference {
  /// String of the resource ID of a Target resource.
  final String id;
  /// Enum of the Target reference type.
  final String type;

  /// Creates a new [TargetReference].
  /// [id] String of the resource ID of a Target resource.
  /// [type] Enum of the Target reference type.
  TargetReference({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory TargetReference.fromMap(Map<String, dynamic> map) {
    return TargetReference(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}

