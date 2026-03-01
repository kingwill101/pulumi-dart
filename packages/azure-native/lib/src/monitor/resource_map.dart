// ignore_for_file: unused_element, unnecessary_cast


/// Resource map for schema in azure monitor.
class ResourceMap {
  /// Resource Map Key.
  final String from;
  /// Resource Map Value.
  final String to;

  /// Creates a new [ResourceMap].
  /// [from] Resource Map Key.
  /// [to] Resource Map Value.
  ResourceMap({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory ResourceMap.fromMap(Map<String, dynamic> map) {
    return ResourceMap(
      from: map['from'] as String,
      to: map['to'] as String,
    );
  }
}

