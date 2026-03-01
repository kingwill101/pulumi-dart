// ignore_for_file: unused_element, unnecessary_cast

class EntryLinkEntryReference {
  /// The relative resource name of the referenced Entry, of the form:
  /// projects/{project_id_or_number}/locations/{location_id}/entryGroups/{entry_group_id}/entries/{entry_id}
  final String name;

  /// The path in the Entry that is referenced in the Entry Link.
  /// Empty path denotes that the Entry itself is referenced in the Entry Link.
  final String? path;

  /// The reference type of the Entry.
  /// Possible values are: `SOURCE`, `TARGET`.
  final String? type;

  /// Creates a new [EntryLinkEntryReference].
  /// [name] The relative resource name of the referenced Entry, of the form:
  /// [path] The path in the Entry that is referenced in the Entry Link.
  /// [type] The reference type of the Entry.
  EntryLinkEntryReference({required this.name, this.path, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'path': ?path, 'type': ?type};
  }

  factory EntryLinkEntryReference.fromMap(Map<String, dynamic> map) {
    return EntryLinkEntryReference(
      name: map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
