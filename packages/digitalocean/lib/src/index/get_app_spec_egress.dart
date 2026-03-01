// ignore_for_file: unused_element, unnecessary_cast


class GetAppSpecEgress {
  /// The type of the environment variable, `GENERAL` or `SECRET`.
  final String? type;

  /// Creates a new [GetAppSpecEgress].
  /// [type] The type of the environment variable, `GENERAL` or `SECRET`.
  GetAppSpecEgress({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory GetAppSpecEgress.fromMap(Map<String, dynamic> map) {
    return GetAppSpecEgress(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

