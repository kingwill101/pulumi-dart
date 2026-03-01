// ignore_for_file: unused_element, unnecessary_cast


class MonitorCustomHeader {
  /// Header name.
  final String? name;
  /// Header Value.
  final String? value;

  /// Creates a new [MonitorCustomHeader].
  /// [name] Header name.
  /// [value] Header Value.
  MonitorCustomHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MonitorCustomHeader.fromMap(Map<String, dynamic> map) {
    return MonitorCustomHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

