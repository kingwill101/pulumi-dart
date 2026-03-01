// ignore_for_file: unused_element, unnecessary_cast


/// Managed service identity.
class Identity {
  /// The type of managed service identity.
  final String type;

  /// Creates a new [Identity].
  /// [type] The type of managed service identity.
  Identity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] as String,
    );
  }
}

