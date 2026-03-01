// ignore_for_file: unused_element, unnecessary_cast


/// Custom Keys credential object
class CustomKeys {
  final Map<String, String>? keys;

  /// Creates a new [CustomKeys].
  /// [keys] Optional.
  CustomKeys({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory CustomKeys.fromMap(Map<String, dynamic> map) {
    return CustomKeys(
      keys: map['keys'] == null ? null : (map['keys'] as Map).cast<String, String>(),
    );
  }
}

