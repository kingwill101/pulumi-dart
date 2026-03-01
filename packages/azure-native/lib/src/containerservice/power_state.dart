// ignore_for_file: unused_element, unnecessary_cast


/// Describes the Power State of the cluster
class PowerState {
  /// Tells whether the cluster is Running or Stopped
  final String? code;

  /// Creates a new [PowerState].
  /// [code] Tells whether the cluster is Running or Stopped
  PowerState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory PowerState.fromMap(Map<String, dynamic> map) {
    return PowerState(
      code: map['code'] == null ? null : map['code'] as String,
    );
  }
}

