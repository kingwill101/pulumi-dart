// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AclEntryList {
  final pulumi.Input<String>? comment;
  final pulumi.Input<String>? entry;

  /// Creates a new [AclEntryList].
  /// [comment] Optional.
  /// [entry] Optional.
  const AclEntryList({
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
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entry: (() { final guardedValue = map['entry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

