// ignore_for_file: unused_element, unnecessary_cast


class FrameworkControlSetControl {
  /// Unique identifier of the control.
  final String id;

  /// Creates a new [FrameworkControlSetControl].
  /// [id] Unique identifier of the control.
  FrameworkControlSetControl({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory FrameworkControlSetControl.fromMap(Map<String, dynamic> map) {
    return FrameworkControlSetControl(
      id: map['id'] as String,
    );
  }
}

