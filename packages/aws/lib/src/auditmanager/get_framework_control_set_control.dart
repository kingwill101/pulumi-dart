// ignore_for_file: unused_element, unnecessary_cast

class GetFrameworkControlSetControl {
  final String id;

  /// Creates a new [GetFrameworkControlSetControl].
  /// [id] Required.
  GetFrameworkControlSetControl({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetFrameworkControlSetControl.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlSetControl(
      id: map['id'] as String,
    );
  }
}
