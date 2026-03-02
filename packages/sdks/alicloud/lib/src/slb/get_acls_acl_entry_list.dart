// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAclsAclEntryList {
  final pulumi.Input<String> comment;
  final pulumi.Input<String> entry;

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
      comment: (map['comment'] as String).input(),
      entry: (map['entry'] as String).input(),
    );
  }
}

