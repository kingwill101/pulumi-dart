// ignore_for_file: unused_element, unnecessary_cast


class AppSpecEgress {
  /// The app egress type: `AUTOASSIGN`, `DEDICATED_IP`
  final String? type;

  /// Creates a new [AppSpecEgress].
  /// [type] The app egress type: `AUTOASSIGN`, `DEDICATED_IP`
  AppSpecEgress({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory AppSpecEgress.fromMap(Map<String, dynamic> map) {
    return AppSpecEgress(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

