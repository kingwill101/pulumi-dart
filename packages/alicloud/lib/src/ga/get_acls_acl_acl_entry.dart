// ignore_for_file: unused_element, unnecessary_cast


class GetAclsAclAclEntry {
  /// The IP entry that you want to add to the ACL.
  final String entry;
  /// The description of the IP entry.
  final String entryDescription;

  /// Creates a new [GetAclsAclAclEntry].
  /// [entry] The IP entry that you want to add to the ACL.
  /// [entryDescription] The description of the IP entry.
  GetAclsAclAclEntry({
    required this.entry,
    required this.entryDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entry': entry,
      'entryDescription': entryDescription,
    };
  }

  factory GetAclsAclAclEntry.fromMap(Map<String, dynamic> map) {
    return GetAclsAclAclEntry(
      entry: map['entry'] as String,
      entryDescription: map['entryDescription'] as String,
    );
  }
}

