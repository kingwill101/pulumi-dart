// ignore_for_file: unused_element, unnecessary_cast

class EntryEntrySourceAncestor {
  /// The name of the ancestor resource.
  final String? name;

  /// The type of the ancestor resource.
  final String? type;

  /// Creates a new [EntryEntrySourceAncestor].
  /// [name] The name of the ancestor resource.
  /// [type] The type of the ancestor resource.
  EntryEntrySourceAncestor({this.name, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'type': ?type};
  }

  factory EntryEntrySourceAncestor.fromMap(Map<String, dynamic> map) {
    return EntryEntrySourceAncestor(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
