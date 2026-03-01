// ignore_for_file: unused_element, unnecessary_cast


/// Assignment Properties
class Assignment {
  /// Resource id for the assigned resource
  final String id;

  /// Creates a new [Assignment].
  /// [id] Resource id for the assigned resource
  Assignment({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Assignment.fromMap(Map<String, dynamic> map) {
    return Assignment(
      id: map['id'] as String,
    );
  }
}

