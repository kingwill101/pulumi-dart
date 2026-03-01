// ignore_for_file: unused_element, unnecessary_cast


/// Properties pertaining to the ClfsTarget
class ClfsTarget {
  /// Resource ID of storage container.
  final String? target;

  /// Creates a new [ClfsTarget].
  /// [target] Resource ID of storage container.
  ClfsTarget({
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
    };
  }

  factory ClfsTarget.fromMap(Map<String, dynamic> map) {
    return ClfsTarget(
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

