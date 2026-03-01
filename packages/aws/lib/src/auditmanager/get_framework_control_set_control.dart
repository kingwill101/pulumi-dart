// ignore_for_file: unused_element, unnecessary_cast

class GetFrameworkControlSetControl {
  final String id;

  /// Creates a new [GetFrameworkControlSetControl].
  /// [id] Required.
  GetFrameworkControlSetControl({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetFrameworkControlSetControl.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlSetControl(id: map['id'] as String);
  }
}
