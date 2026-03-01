// ignore_for_file: unused_element, unnecessary_cast


class AclEntryList {
  final String? comment;
  final String? entry;

  /// Creates a new [AclEntryList].
  /// [comment] Optional.
  /// [entry] Optional.
  AclEntryList({
    this.comment,
    this.entry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'entry': ?entry,
    };
  }

  factory AclEntryList.fromMap(Map<String, dynamic> map) {
    return AclEntryList(
      comment: map['comment'] == null ? null : map['comment'] as String,
      entry: map['entry'] == null ? null : map['entry'] as String,
    );
  }
}

