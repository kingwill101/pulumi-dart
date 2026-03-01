// ignore_for_file: unused_element, unnecessary_cast


class GetAclsAclEntryList {
  final String comment;
  final String entry;

  /// Creates a new [GetAclsAclEntryList].
  /// [comment] Required.
  /// [entry] Required.
  GetAclsAclEntryList({
    required this.comment,
    required this.entry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': comment,
      'entry': entry,
    };
  }

  factory GetAclsAclEntryList.fromMap(Map<String, dynamic> map) {
    return GetAclsAclEntryList(
      comment: map['comment'] as String,
      entry: map['entry'] as String,
    );
  }
}

