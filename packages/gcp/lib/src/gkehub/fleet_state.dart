// ignore_for_file: unused_element, unnecessary_cast

class FleetState {
  /// (Output)
  /// Describes the state of a Fleet resource.
  final String? code;

  /// Creates a new [FleetState].
  /// [code] (Output)
  FleetState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    return map;
  }

  factory FleetState.fromMap(Map<String, dynamic> map) {
    return FleetState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}
