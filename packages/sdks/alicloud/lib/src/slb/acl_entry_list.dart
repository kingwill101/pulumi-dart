// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AclEntryList {
  final pulumi.Input<String>? comment;
  final pulumi.Input<String>? entry;

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
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      entry: map['entry'] == null ? null : (map['entry'] as String).input(),
    );
  }
}

