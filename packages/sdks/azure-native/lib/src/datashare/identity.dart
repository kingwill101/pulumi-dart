// ignore_for_file: unused_element, unnecessary_cast


/// Identity of resource
class Identity {
  /// Identity Type
  final String? type;

  /// Creates a new [Identity].
  /// [type] Identity Type
  Identity({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

