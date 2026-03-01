// ignore_for_file: unused_element, unnecessary_cast


/// Reference to another resource along with its state.
class ActivatedResourceReference {
  /// Resource ID.
  final String? id;

  /// Creates a new [ActivatedResourceReference].
  /// [id] Resource ID.
  ActivatedResourceReference({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ActivatedResourceReference.fromMap(Map<String, dynamic> map) {
    return ActivatedResourceReference(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

